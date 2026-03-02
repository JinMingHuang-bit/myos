#include "process.h"
#include "memory.h"
#include "printk.h"
#include "lib.h"

// Global process table
struct Task_Struct *task[NR_TASKS] = {NULL, };
long nr_tasks = 0;

// Init task (idle process)
struct Task_Struct *init_task = NULL;

// Runqueue
static struct List runqueue;

// Wait queue (for future use)
static struct List wait_queue;

// PID allocator
static long last_pid = -1;

/*
 * Get a new PID
 */
static long get_new_pid(void)
{
    last_pid++;
    if (last_pid >= NR_TASKS)
        last_pid = 0;
    
    // Find an unused PID
    while (task[last_pid] != NULL) {
        last_pid++;
        if (last_pid >= NR_TASKS)
            last_pid = 0;
    }
    
    return last_pid;
}

/*
 * Initialize the process subsystem
 */
void process_init(void)
{
    color_printk(YELLOW, BLACK, "Initializing process subsystem...\n");
    
    // Initialize runqueue
    list_init(&runqueue);
    list_init(&wait_queue);
    
    // Create init task (idle process, PID 0)
    init_task = (struct Task_Struct *)get_free_page();
    if (!init_task) {
        color_printk(RED, BLACK, "Failed to create init task!\n");
        return;
    }
    
    // Zero out the task structure
    Cmemset(init_task, 0, THREAD_SIZE);
    
    // Initialize init_task
    init_task->pid = 0;
    init_task->ppid = -1;
    Cstrcpy(init_task->name, "init");
    init_task->state = TASK_RUNNING;
    init_task->flags = PF_KTHREAD;
    init_task->priority = 1;
    init_task->counter = 1;
    init_task->need_resched = 0;
    init_task->usage = 1;
    
    // Initialize list heads
    list_init(&init_task->children);
    list_init(&init_task->sibling);
    
    // Set up kernel stack
    init_task->stack = (void *)get_free_page();
    if (!init_task->stack) {
        color_printk(RED, BLACK, "Failed to allocate kernel stack for init!\n");
        return;
    }
    
    // Set up thread context
    init_task->thread.rsp0 = (unsigned long)init_task->stack + THREAD_SIZE;
    init_task->thread.rsp = init_task->thread.rsp0;
    init_task->thread.rip = 0;
    
    // Add to task table and runqueue
    task[0] = init_task;
    nr_tasks = 1;
    add_to_runqueue(init_task);
    
    color_printk(GREEN, BLACK, "Init task created (PID: 0)\n");
    color_printk(YELLOW, BLACK, "Process subsystem initialized.\n");
}

/*
 * Add a task to the runqueue
 */
void add_to_runqueue(struct Task_Struct *tsk)
{
    if (tsk->state == TASK_RUNNING) {
        list_add_to_behind(&runqueue, &tsk->list);
    }
}

/*
 * Remove a task from the runqueue
 */
void del_from_runqueue(struct Task_Struct *tsk)
{
    if (!list_is_empty(&tsk->list)) {
        list_del(&tsk->list);
        list_init(&tsk->list);
    }
}

/*
 * Create a new task
 */
struct Task_Struct *create_task(const char *name, int (*fn)(void *), void *arg)
{
    struct Task_Struct *tsk;
    struct Page *page;
    unsigned long *stack;
    
    // Allocate page for task structure
    page = alloc_page(ZONE_NORMAL, 1, PG_PTable_Maped | PG_Active | PG_Kernel);
    if (!page) {
        color_printk(RED, BLACK, "create_task: Failed to allocate page for task struct\n");
        return NULL;
    }
    
    tsk = (struct Task_Struct *)Phy_To_Virt(page->PHY_address);
    Cmemset(tsk, 0, PAGE_4K_SIZE);
    
    // Get new PID
    tsk->pid = get_new_pid();
    if (tsk->pid < 0) {
        color_printk(RED, BLACK, "create_task: No available PID\n");
        return NULL;
    }
    
    // Set parent
    tsk->ppid = current->pid;
    tsk->parent = current;
    
    // Copy name
    Cstrncpy(tsk->name, (char *)name, TASK_NAME_LEN - 1);
    tsk->name[TASK_NAME_LEN - 1] = '\0';
    
    // Initialize state
    tsk->state = TASK_RUNNING;
    tsk->flags = current->flags;
    tsk->exit_code = 0;
    tsk->need_resched = 0;
    
    // Scheduling
    tsk->counter = 1;
    tsk->priority = current->priority;
    tsk->usage = 1;
    
    // Initialize lists
    list_init(&tsk->list);
    list_init(&tsk->children);
    list_init(&tsk->sibling);
    
    // Allocate kernel stack
    page = alloc_page(ZONE_NORMAL, 1, PG_PTable_Maped | PG_Active | PG_Kernel);
    if (!page) {
        color_printk(RED, BLACK, "create_task: Failed to allocate kernel stack\n");
        return NULL;
    }
    
    stack = (unsigned long *)Phy_To_Virt(page->PHY_address);
    tsk->stack = (void *)stack;
    
    // Set up thread context
    tsk->thread.rsp0 = (unsigned long)stack + THREAD_SIZE;
    tsk->thread.rsp = tsk->thread.rsp0;
    tsk->thread.rip = (unsigned long)fn;
    
    // Set up CPU context for context switch
    tsk->thread.context = (struct Cpu_Context *)((unsigned long)stack + THREAD_SIZE - sizeof(struct Cpu_Context));
    Cmemset(tsk->thread.context, 0, sizeof(struct Cpu_Context));
    
    // Set up the context for the new thread
    tsk->thread.context->rip = (unsigned long)fn;
    tsk->thread.context->rsp = tsk->thread.rsp0 - sizeof(struct Cpu_Context);
    tsk->thread.context->rbp = 0;
    tsk->thread.context->rflags = 0x202;  // IF flag set
    tsk->thread.context->cs = KERNEL_CS;
    tsk->thread.context->ss = KERNEL_DS;
    
    // Memory management
    tsk->start_code = 0;
    tsk->end_code = 0;
    tsk->start_data = 0;
    tsk->end_data = 0;
    tsk->start_brk = 0;
    tsk->brk = 0;
    tsk->start_stack = tsk->thread.rsp0;
    
    // Page table (inherit from parent for now)
    tsk->pgd = current->pgd;
    tsk->thread.page_dir = current->thread.page_dir;
    
    // Add to task table
    task[tsk->pid] = tsk;
    nr_tasks++;
    
    // Add to parent's children list
    list_add_to_behind(&current->children, &tsk->sibling);
    
    // Add to runqueue
    add_to_runqueue(tsk);
    
    color_printk(GREEN, BLACK, "Task created: %s (PID: %ld, Parent: %ld)\n", 
                 tsk->name, tsk->pid, tsk->ppid);
    
    return tsk;
}

/*
 * Create a kernel thread
 */
struct Task_Struct *kernel_thread(int (*fn)(void *), void *arg, long flags)
{
    struct Task_Struct *tsk;
    
    tsk = create_task("kthread", fn, arg);
    if (tsk) {
        tsk->flags |= PF_KTHREAD;
    }
    
    return tsk;
}

/*
 * Find a task by PID
 */
struct Task_Struct *find_task_by_pid(long pid)
{
    if (pid < 0 || pid >= NR_TASKS)
        return NULL;
    
    return task[pid];
}

/*
 * Wake up a process
 */
void wake_up_process(struct Task_Struct *tsk)
{
    tsk->state = TASK_RUNNING;
    add_to_runqueue(tsk);
}

/*
 * Sleep on a wait queue
 */
void sleep_on(struct List *wait_queue)
{
    struct Task_Struct *tsk = current;
    
    if (!tsk)
        return;
    
    tsk->state = TASK_UNINTERRUPTIBLE;
    del_from_runqueue(tsk);
    list_add_to_behind(wait_queue, &tsk->list);
    
    schedule();
}

/*
 * Interruptible sleep on a wait queue
 */
void interruptible_sleep_on(struct List *wait_queue)
{
    struct Task_Struct *tsk = current;
    
    if (!tsk)
        return;
    
    tsk->state = TASK_INTERRUPTIBLE;
    del_from_runqueue(tsk);
    list_add_to_behind(wait_queue, &tsk->list);
    
    schedule();
}

/*
 * Context switch
 * This is the core of the scheduler
 */
void switch_to(struct Task_Struct *prev, struct Task_Struct *next)
{
    // Save current task's context
    __asm__ __volatile__(
        "pushq %%rbp\n\t"
        "pushq %%rax\n\t"
        "pushq %%rbx\n\t"
        "pushq %%rcx\n\t"
        "pushq %%rdx\n\t"
        "pushq %%rsi\n\t"
        "pushq %%rdi\n\t"
        "pushq %%r8\n\t"
        "pushq %%r9\n\t"
        "pushq %%r10\n\t"
        "pushq %%r11\n\t"
        "pushq %%r12\n\t"
        "pushq %%r13\n\t"
        "pushq %%r14\n\t"
        "pushq %%r15\n\t"
        
        // Save stack pointer to prev->thread.context
        "movq %0, %%rax\n\t"
        "movq %%rsp, (%%rax)\n\t"
        
        // Load next task's stack pointer
        "movq %1, %%rax\n\t"
        "movq (%%rax), %%rsp\n\t"
        
        // Restore registers
        "popq %%r15\n\t"
        "popq %%r14\n\t"
        "popq %%r13\n\t"
        "popq %%r12\n\t"
        "popq %%r11\n\t"
        "popq %%r10\n\t"
        "popq %%r9\n\t"
        "popq %%r8\n\t"
        "popq %%rdi\n\t"
        "popq %%rsi\n\t"
        "popq %%rdx\n\t"
        "popq %%rcx\n\t"
        "popq %%rbx\n\t"
        "popq %%rax\n\t"
        "popq %%rbp\n\t"
        
        :
        : "r"(prev->thread.context), "r"(next->thread.context)
        : "rax", "memory"
    );
}

/*
 * Schedule the next task to run
 */
void schedule(void)
{
    struct Task_Struct *prev = current;
    struct Task_Struct *next = NULL;
    struct List *entry;
    
    // Check if we need to reschedule
    if (!prev->need_resched && prev->counter > 0)
        return;
    
    // Clear reschedule flag
    prev->need_resched = 0;
    
    // Find the next task to run (simple round-robin)
    if (!list_is_empty(&runqueue)) {
        entry = list_next(&runqueue);
        next = container_of(entry, struct Task_Struct, list);
        
        // Move to next in runqueue
        del_from_runqueue(prev);
        add_to_runqueue(prev);
    }
    
    // If no next task, run init
    if (!next || next == prev) {
        next = init_task;
    }
    
    // Switch to next task
    if (prev != next) {
        switch_to(prev, next);
    }
}

/*
 * Timer interrupt handler
 * Called periodically to trigger scheduling
 */
void timer_interrupt(void)
{
    struct Task_Struct *tsk = current;
    
    if (!tsk)
        return;
    
    // Decrement time slice
    if (tsk->counter > 0)
        tsk->counter--;
    
    // Check if time slice expired
    if (tsk->counter <= 0) {
        tsk->counter = tsk->priority;
        tsk->need_resched = 1;
    }
    
    // Trigger scheduling if needed
    if (tsk->need_resched) {
        schedule();
    }
}

/*
 * Exit a process
 */
void do_exit(long code)
{
    struct Task_Struct *tsk = current;
    
    if (!tsk || tsk == init_task) {
        // Can't exit init task
        while (1);
    }
    
    tsk->exit_code = code;
    tsk->state = TASK_ZOMBIE;
    tsk->flags |= PF_EXITING;
    
    del_from_runqueue(tsk);
    
    // TODO: Notify parent
    // TODO: Release resources
    
    // Schedule next task
    schedule();
    
    // Should never reach here
    while (1);
}

/*
 * Release a task structure
 */
void release_task(struct Task_Struct *tsk)
{
    if (!tsk)
        return;
    
    // Remove from task table
    if (tsk->pid >= 0 && tsk->pid < NR_TASKS) {
        task[tsk->pid] = NULL;
    }
    
    nr_tasks--;
    
    // TODO: Free resources (stack, page tables, etc.)
    
    // Remove from parent's children list
    if (!list_is_empty(&tsk->sibling)) {
        list_del(&tsk->sibling);
    }
}

/*
 * Simple test function for kernel thread
 */
static int kthread_test_func(void *arg)
{
    long count = (long)arg;
    long i;
    
    color_printk(GREEN, BLACK, "Kernel thread started (count: %ld)\n", count);
    
    for (i = 0; i < count; i++) {
        // Do some work
        if (i % 100000 == 0) {
            color_printk(BLUE, BLACK, "kthread iteration: %ld\n", i);
        }
    }
    
    color_printk(GREEN, BLACK, "Kernel thread finished (count: %ld)\n", count);
    
    do_exit(0);
    return 0;
}

/*
 * Test process creation
 */
void process_test(void)
{
    color_printk(YELLOW, BLACK, "Testing process creation...\n");
    
    // Create a few kernel threads
    create_task("kthread1", kthread_test_func, (void *)1000000);
    create_task("kthread2", kthread_test_func, (void *)2000000);
    create_task("kthread3", kthread_test_func, (void *)3000000);
    
    color_printk(YELLOW, BLACK, "Process test completed.\n");
}
