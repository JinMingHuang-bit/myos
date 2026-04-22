#include <stdio.h>
#include "minunit.h"   // 提供的 minunit 头文件
//#include "list.h"      // 待测代码，包含 struct List 和所有静态内联函数
struct List
{
    struct List *next;
    struct List *prev;
};

static inline void list_init(struct List *list)
{
    list->next = list;
    list->prev = list;
}

static inline void list_add_to_behind(struct List *entry,struct List *new)
{
    new->next = entry->next;
    new->prev = entry;
    entry->next->prev = new;
    entry->next = new;
}
static inline void list_add_to_before(struct List *entry,struct List*new ){
    new->next = entry;
    new->prev = entry->prev;
    entry->prev->next = new;
    entry->prev = new;
}
static inline void list_del(struct List *entry){
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

static inline long list_is_empty(struct List *entry){
    if (entry->next == entry && entry->prev == entry)
    {
        return 1;
    }else{
        return 0;
    }
}

static inline struct List *list_prev(struct List *entry){
    if (entry->prev != NULL)
    {
        return entry->prev;
    }else{
        return NULL;
    }
}

static inline struct List *list_next(struct List *entry){
    if (entry->next != NULL)
    {
        return entry->next;
    }else{
        return NULL;
    }
}
// 辅助函数：检查链表是否完整（循环、前后链接一致）
static int check_list_integrity(struct List *head) {
    struct List *cur = head;
    if (!head) return 0;
    do {
        if (cur->next->prev != cur) return 0;
        if (cur->prev->next != cur) return 0;
        cur = cur->next;
    } while (cur != head);
    return 1;
}

// 辅助函数：计算链表节点数
static int list_count(struct List *head) {
    if (list_is_empty(head)) return 0;
    int cnt = 0;
    struct List *cur = head;
    do {
        cnt++;
        cur = cur->next;
    } while (cur != head);
    return cnt;
}

// ------------------- 测试 list_init -------------------
MU_TEST(test_list_init) {
    struct List node;
    list_init(&node);
    mu_assert(node.next == &node && node.prev == &node,
              "After init, next/prev should point to self");
    mu_assert(list_is_empty(&node) == 1,
              "Empty list should be reported as empty");
}

// ------------------- 测试 list_add_to_behind -------------------
MU_TEST(test_add_to_behind_single) {
    struct List head, new;
    list_init(&head);
    list_add_to_behind(&head, &new);
    // 验证链接: head <-> new 循环
    mu_assert(head.next == &new && head.prev == &new,
              "head's next/prev should point to new");
    mu_assert(new.next == &head && new.prev == &head,
              "new's next/prev should point to head");
    mu_assert(list_count(&head) == 2, "List should have 2 nodes");
    mu_assert(check_list_integrity(&head), "List integrity broken");
}

MU_TEST(test_add_to_behind_multiple) {
    struct List head, a, b;
    list_init(&head);
    list_add_to_behind(&head, &a);   // head <-> a
    list_add_to_behind(&head, &b);   // head <-> b <-> a  (在head后面插入b)
    // 预期顺序: head -> b -> a -> head
    mu_assert(head.next == &b && head.prev == &a, "head links wrong");
    mu_assert(b.next == &a && b.prev == &head, "b links wrong");
    mu_assert(a.next == &head && a.prev == &b, "a links wrong");
    mu_assert(list_count(&head) == 3, "Should have 3 nodes");
    mu_assert(check_list_integrity(&head), "List integrity broken");
}

// ------------------- 测试 list_add_to_before -------------------
MU_TEST(test_add_to_before_single) {
    struct List head, new;
    list_init(&head);
    list_add_to_before(&head, &new);
    // 在 head 前面插入 new，得到 new <-> head 循环
    mu_assert(head.next == &new && head.prev == &new,
              "head's next/prev should point to new");
    mu_assert(new.next == &head && new.prev == &head,
              "new's next/prev should point to head");
    mu_assert(list_count(&head) == 2, "List should have 2 nodes");
    mu_assert(check_list_integrity(&head), "List integrity broken");
}

MU_TEST(test_add_to_before_multiple) {
    struct List head, a, b;
    list_init(&head);
    list_add_to_before(&head, &a);   // a <-> head
    list_add_to_before(&head, &b);   // 在head前面插入b: b <-> a <-> head
    // 预期顺序: head -> a -> b -> head? 注意循环方向:
    // 插入b后，b的next=head, b的prev=原来的head->prev(=a)
    // 实际上顺序是: head <-> a <-> b 循环? 让我们手动验证:
    // 第一次后: head.next=a, head.prev=a; a.next=head, a.prev=head
    // 第二次: list_add_to_before(&head, &b):
    //   new->next = entry(=head); new->prev = entry->prev(=a);
    //   entry->prev->next = new => a.next = b;
    //   entry->prev = new => head.prev = b;
    // 结果: head.next = a, head.prev = b; a.next = b, a.prev = head; b.next = head, b.prev = a
    // 循环顺序: head -> a -> b -> head (正确)
    mu_assert(head.next == &a && head.prev == &b, "head links wrong");
    mu_assert(a.next == &b && a.prev == &head, "a links wrong");
    mu_assert(b.next == &head && b.prev == &a, "b links wrong");
    mu_assert(list_count(&head) == 3, "Should have 3 nodes");
    mu_assert(check_list_integrity(&head), "List integrity broken");
}

// ------------------- 测试 list_del -------------------
MU_TEST(test_del_single_node) {
    struct List node;
    list_init(&node);
    // 删除唯一节点后，链表应变为空（但函数本身不修改被删节点的指针，只调整前后）
    list_del(&node);
    // 由于 node 是唯一节点，删除后 node.prev->next = node.next 即 node->next = node
    // 但注意：list_del 执行后，node 不再属于任何链表，其 next/prev 仍指向自身，
    // 但前后节点（自身）被修改，结果 node.next = node, node.prev = node，仍然自循环。
    // 但是调用者通常会丢弃该节点。检查空链表条件：node.next == node && node.prev == node 成立，
    // 所以 list_is_empty(&node) 返回 1，表示这个节点独自成环（符合预期）。
    mu_assert(list_is_empty(&node) == 1,
              "After deleting the only node, it should be empty (self-loop)");
    // 但为了验证原始链表逻辑，我们测试删除后其他节点链接。下面测试多节点。
}

MU_TEST(test_del_middle) {
    struct List head, a, b;
    list_init(&head);
    list_add_to_behind(&head, &a);
    list_add_to_behind(&head, &b);   // head -> b -> a -> head
    list_del(&b);                    // 删除 b
    // 期望: head <-> a 循环
    mu_assert(head.next == &a && head.prev == &a, "head links after del");
    mu_assert(a.next == &head && a.prev == &head, "a links after del");
    mu_assert(list_count(&head) == 2, "Should have 2 nodes left");
    mu_assert(check_list_integrity(&head), "Integrity after del middle");
}

MU_TEST(test_del_head) {
    struct List head, a, b;
    list_init(&head);
    list_add_to_behind(&head, &a);
    list_add_to_behind(&head, &b);   // head -> b -> a -> head
    list_del(&head);                 // 删除头节点
    // 剩余 b 和 a，新的循环起点可以是 b 或 a。需要验证 b 和 a 互相链接。
    mu_assert(b.next == &a && b.prev == &a, "b links after head deletion");
    mu_assert(a.next == &b && a.prev == &b, "a links after head deletion");
    mu_assert(list_count(&b) == 2, "Should have 2 nodes");
    mu_assert(check_list_integrity(&b), "Integrity after del head");
}

// ------------------- 测试 list_is_empty -------------------
MU_TEST(test_is_empty) {
    struct List node;
    list_init(&node);
    mu_assert(list_is_empty(&node) == 1, "Fresh node should be empty");
    struct List other;
    list_add_to_behind(&node, &other);
    mu_assert(list_is_empty(&node) == 0, "Non-empty list should return 0");
    mu_assert(list_is_empty(&other) == 0, "Non-head node also not empty (cyclic)");
    list_del(&other);
    mu_assert(list_is_empty(&node) == 1, "After deleting the other node, list becomes empty again");
}

// ------------------- 测试 list_prev / list_next -------------------
MU_TEST(test_prev_next) {
    struct List head, a, b;
    list_init(&head);
    list_add_to_behind(&head, &a);
    list_add_to_behind(&head, &b);   // head -> b -> a -> head

    mu_assert(list_next(&head) == &b, "head next should be b");
    mu_assert(list_prev(&head) == &a, "head prev should be a");
    mu_assert(list_next(&b) == &a, "b next should be a");
    mu_assert(list_prev(&b) == &head, "b prev should be head");
    mu_assert(list_next(&a) == &head, "a next should be head");
    mu_assert(list_prev(&a) == &b, "a prev should be b");
}

MU_TEST(test_prev_next_single) {
    struct List node;
    list_init(&node);
    // 在单节点循环链表中，prev/next 都指向自身
    mu_assert(list_next(&node) == &node, "single node next should be itself");
    mu_assert(list_prev(&node) == &node, "single node prev should be itself");
}

// ------------------- 测试套件 -------------------
MU_TEST_SUITE(list_suite) {
    MU_RUN_TEST(test_list_init);
    MU_RUN_TEST(test_add_to_behind_single);
    MU_RUN_TEST(test_add_to_behind_multiple);
    MU_RUN_TEST(test_add_to_before_single);
    MU_RUN_TEST(test_add_to_before_multiple);
    MU_RUN_TEST(test_del_single_node);
    MU_RUN_TEST(test_del_middle);
    MU_RUN_TEST(test_del_head);
    MU_RUN_TEST(test_is_empty);
    MU_RUN_TEST(test_prev_next);
    MU_RUN_TEST(test_prev_next_single);
}

int main() {
    printf("Running list tests...\n");
    MU_RUN_SUITE(list_suite);
    MU_REPORT();
    return MU_EXIT_CODE;
}