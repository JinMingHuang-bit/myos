#ifndef _PROCESS_H_
#define _PROCESS_H_

#include "lib.h"
#include "memory.h"
#include "trap.h"

// Process states
#define TASK_RUNNING		0
#define TASK_INTERRUPTIBLE	1
#define TASK_UNINTERRUPTIBLE	2
#define TASK_STOPPED		3
#define TASK_ZOMBIE		4

// Process flags
#define PF_KTHREAD		(1 << 0)  // Kernel thread
#define PF_NEED_RESCHED		(1 << 1)  // Need reschedule
#define PF_EXITING		(1 << 2)  // Exiting

// Maximum number of processes
#define NR_TASKS		64
#define TASK_NAME_LEN		16

// x86_64 segment selectors
#define KERNEL_CS		(0 << 3)
#define KERNEL_DS		(1 << 3)
#define USER_CS			(2 << 3)
#define USER_DS			(3 << 3)

// Stack size (4 pages = 16KB)
#define THREAD_SIZE		(PAGE_4K_SIZE * 4)

// Forward declarations
struct Task_Struct;
struct Thread_Struct;

/*
 * CPU context saved during context switch
 * This structure holds all registers that need to be preserved
 */
struct Cpu_Context {
    unsigned long r15;
    unsigned long r14;
    unsigned long r13;
    unsigned long r12;
    unsigned long r11;
    unsigned long r10;
    unsigned long r9;
    unsigned long r8;
    unsigned long rbp;
    unsigned long rbx;
    unsigned long rdi;
    unsigned long rsi;
    unsigned long rdx;
    unsigned long rcx;
    unsigned long rax;
    unsigned long rip;      // Instruction pointer
    unsigned long cs;       // Code segment
    unsigned long rflags;   // Flags register
    unsigned long rsp;      // Stack pointer
    unsigned long ss;       // Stack segment
};

/*
 * Thread structure - holds thread-specific information
 */
struct Thread_Struct {
    unsigned long rsp0;         // Kernel stack pointer (Ring 0)
    unsigned long rsp;          // User stack pointer
    unsigned long rip;          // Instruction pointer
    struct Cpu_Context *context; // Pointer to saved context
    unsigned long *page_dir;    // Page directory base (CR3)
};

/*
 * Process Control Block (PCB)
 * This is the main structure for process management
 */
struct Task_Struct {
    struct List list;           // For process queue (doubly linked list)
    
    // Process identification
    long pid;                   // Process ID
    long ppid;                  // Parent process ID
    char name[TASK_NAME_LEN];   // Process name
    
    // Process state
    volatile long state;        // Process state (TASK_*)
    long flags;                 // Process flags (PF_*)
    long exit_code;             // Exit code
    
    // Scheduling
    long counter;               // Time slice counter
    long priority;              // Priority
    long need_resched;          // Need reschedule flag
    
    // Thread context
    struct Thread_Struct thread;
    
    // Memory management
    unsigned long start_code;   // Start of code segment
    unsigned long end_code;     // End of code segment
    unsigned long start_data;   // Start of data segment
    unsigned long end_data;     // End of data segment
    unsigned long start_brk;    // Start of heap
    unsigned long brk;          // Current end of heap
    unsigned long start_stack;  // Start of stack
    
    // Page table
    unsigned long *pgd;         // Page Global Directory (CR3 value)
    
    // Reference counting
    long usage;                 // Usage count
    long signal;                // Signal bitmap
    
    // Timing
    unsigned long start_time;   // Start time (jiffies)
    unsigned long utime;        // User mode time
    unsigned long stime;        // Kernel mode time
    
    // File descriptors (reserved for future)
    void *files;                // File descriptor table
    
    // Parent and children
    struct Task_Struct *parent; // Parent process
    struct List children;       // Children list
    struct List sibling;        // Sibling list (for children of same parent)
    
    // Kernel stack
    void *stack;                // Kernel stack base address
};

/*
 * Process list head
 */
extern struct Task_Struct *init_task;
extern struct Task_Struct *task[NR_TASKS];
extern long nr_tasks;

/*
 * Current process pointer
 * In x86_64, we can use GS segment to store current task pointer
 */
#define current ((struct Task_Struct *)(task[0]))

/*
 * Process management functions
 */

// Initialize process subsystem
void process_init(void);

// Create a new process (kernel thread)
struct Task_Struct *kernel_thread(
    int (*fn)(void *), 
    void *arg, 
    long flags
);

// Create a new process with custom name
struct Task_Struct *create_task(
    const char *name,
    int (*fn)(void *),
    void *arg
);

// Context switch
void schedule(void);
void switch_to(struct Task_Struct *prev, struct Task_Struct *next);

// Process state management
void wake_up_process(struct Task_Struct *task);
void sleep_on(struct List *wait_queue);
void interruptible_sleep_on(struct List *wait_queue);

// Process termination
void do_exit(long code);
void release_task(struct Task_Struct *task);

// Find process by PID
struct Task_Struct *find_task_by_pid(long pid);

// Add task to runqueue
void add_to_runqueue(struct Task_Struct *task);

// Remove task from runqueue
void del_from_runqueue(struct Task_Struct *task);

// Timer interrupt handler (for scheduling)
void timer_interrupt(void);

// Test function
void process_test(void);

/*
 * Helper macros
 */
#define get_current() (current)
#define get_pid(task) ((task)->pid)
#define get_ppid(task) ((task)->ppid)
#define is_kernel_thread(task) ((task)->flags & PF_KTHREAD)
#define set_need_resched() (current->need_resched = 1)
#define clear_need_resched() (current->need_resched = 0)
#define need_resched() (current->need_resched)

/*
 * Stack helpers
 */
static inline struct Page *alloc_task_page(void)
{
    struct Page *page = alloc_page(ZONE_NORMAL, 1, PG_PTable_Maped | PG_Active | PG_Kernel);
    if (!page)
        return NULL;
    return page;
}

static inline unsigned long *get_task_stack(struct Page *page)
{
    return (unsigned long *)Phy_To_Virt(page->PHY_address);
}

#endif
