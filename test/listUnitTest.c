#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

// 定义链表节点结构
struct List
{
    struct List *next;
    struct List *prev;
};

// 链表操作函数
void list_init(struct List *list)
{
    list->next = list;
    list->prev = list;
}

void list_add_to_behind(struct List *entry, struct List *new)
{
    new->next = entry->next;
    new->prev = entry;
    entry->next->prev = new;
    entry->next = new;
}

void list_add_to_before(struct List *entry, struct List *new)
{
    new->next = entry;
    new->prev = entry->prev;
    entry->prev->next = new;
    entry->prev = new;
}

void list_del(struct List *entry)
{
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

long list_is_empty(struct List *entry)
{
    if (entry->next == entry && entry->prev == entry)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

struct List *list_prev(struct List *entry)
{
    if (entry->prev != NULL)
    {
        return entry->prev;
    }
    else
    {
        return NULL;
    }
}

struct List *list_next(struct List *entry)
{
    if (entry->next != NULL)
    {
        return entry->next;
    }
    else
    {
        return NULL;
    }
}

// 测试函数
void test_list_operations()
{
    printf("测试双向链表操作...\n");
    
    // 创建链表头
    struct List head;
    list_init(&head);
    assert(list_is_empty(&head) == 1);
    printf("✓ 链表初始化成功\n");
    
    // 创建几个测试节点
    struct List node1, node2, node3;
    
    // 测试在头部后面添加节点
    list_add_to_behind(&head, &node1);
    assert(head.next == &node1);
    assert(head.prev == &node1);
    assert(node1.next == &head);
    assert(node1.prev == &head);
    printf("✓ 在头部后添加节点成功\n");
    
    // 测试在节点1后面添加节点2
    list_add_to_behind(&node1, &node2);
    assert(node1.next == &node2);
    assert(node2.prev == &node1);
    assert(node2.next == &head);
    assert(head.prev == &node2);
    printf("✓ 在节点后添加节点成功\n");
    
    // 测试在节点前添加节点3
    list_add_to_before(&node2, &node3);
    assert(node1.next == &node3);
    assert(node3.prev == &node1);
    assert(node3.next == &node2);
    assert(node2.prev == &node3);
    printf("✓ 在节点前添加节点成功\n");
    
    // 测试删除节点
    list_del(&node3);
    assert(node1.next == &node2);
    assert(node2.prev == &node1);
    printf("✓ 删除节点成功\n");
    
    // 测试链表非空判断
    assert(list_is_empty(&head) == 0);
    printf("✓ 链表非空判断正确\n");
    
    // 测试获取前驱和后继节点
    assert(list_prev(&node2) == &node1);
    assert(list_next(&node1) == &node2);
    printf("✓ 获取前驱和后继节点成功\n");
    
    // 删除所有节点，测试链表是否为空
    list_del(&node1);
    list_del(&node2);
    assert(list_is_empty(&head) == 1);
    printf("✓ 链表为空判断正确\n");
    
    printf("所有测试通过！\n\n");
}

// 示例使用函数
void demonstrate_list_usage()
{
    printf("双向链表使用示例:\n");
    
    // 创建链表头
    struct List head;
    list_init(&head);
    
    // 创建一些节点
    struct List nodes[5];
    
    // 将节点添加到链表中
    for (int i = 0; i < 5; i++) {
        list_add_to_before(&head, &nodes[i]);
        printf("添加节点 %d 到链表\n", i+1);
    }
    
    // 遍历链表
    printf("正向遍历链表: ");
    struct List *current = head.next;
    int count = 0;
    while (current != &head) {
        printf("节点%d ", count+1);
        current = current->next;
        count++;
    }
    printf("\n");
    
    // 反向遍历链表
    printf("反向遍历链表: ");
    current = head.prev;
    count = 0;
    while (current != &head) {
        printf("节点%d ", 5 - count);
        current = current->prev;
        count++;
    }
    printf("\n");
    
    // 删除第二个节点
    list_del(&nodes[3]);
    printf("删除第二个节点后正向遍历: ");
    current = head.next;
    while (current != &head) {
        printf("节点 ");
        current = current->next;
    }
    printf("\n");
    
    printf("链表演示结束！\n\n");
}

int main()
{
    printf("双向链表测试程序\n");
    printf("================\n\n");
    
    // 运行测试
    test_list_operations();
    
    // 演示使用
    demonstrate_list_usage();
    
    return 0;
}