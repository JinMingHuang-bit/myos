#include <stdio.h>
#include <stdlib.h>

// 定义链表节点结构
typedef struct Node {
    int data;           // 节点数据
    struct Node* next;  // 指向下一个节点的指针
} Node;

// 创建新节点
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (newNode == NULL) {
        printf("内存分配失败！\n");
        exit(1);
    }
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// 在链表头部插入节点
void insertAtHead(Node** head, int data) {
    Node* newNode = createNode(data);
    newNode->next = *head;
    *head = newNode;
}

// 在链表尾部插入节点
void insertAtTail(Node** head, int data) {
    Node* newNode = createNode(data);
    
    if (*head == NULL) {
        *head = newNode;
        return;
    }
    
    Node* current = *head;
    while (current->next != NULL) {
        current = current->next;
    }
    current->next = newNode;
}

// 在指定位置插入节点
void insertAtPosition(Node** head, int data, int position) {
    if (position < 0) {
        printf("位置无效！\n");
        return;
    }
    
    if (position == 0) {
        insertAtHead(head, data);
        return;
    }
    
    Node* newNode = createNode(data);
    Node* current = *head;
    
    for (int i = 0; i < position - 1 && current != NULL; i++) {
        current = current->next;
    }
    
    if (current == NULL) {
        printf("位置超出链表长度！\n");
        free(newNode);
        return;
    }
    
    newNode->next = current->next;
    current->next = newNode;
}

// 删除头节点
void deleteAtHead(Node** head) {
    if (*head == NULL) {
        printf("链表为空！\n");
        return;
    }
    
    Node* temp = *head;
    *head = (*head)->next;
    free(temp);
}

// 删除尾节点
void deleteAtTail(Node** head) {
    if (*head == NULL) {
        printf("链表为空！\n");
        return;
    }
    
    if ((*head)->next == NULL) {
        free(*head);
        *head = NULL;
        return;
    }
    
    Node* current = *head;
    while (current->next->next != NULL) {
        current = current->next;
    }
    
    free(current->next);
    current->next = NULL;
}

// 删除指定位置的节点
void deleteAtPosition(Node** head, int position) {
    if (*head == NULL) {
        printf("链表为空！\n");
        return;
    }
    
    if (position < 0) {
        printf("位置无效！\n");
        return;
    }
    
    if (position == 0) {
        deleteAtHead(head);
        return;
    }
    
    Node* current = *head;
    for (int i = 0; i < position - 1 && current != NULL; i++) {
        current = current->next;
    }
    
    if (current == NULL || current->next == NULL) {
        printf("位置超出链表长度！\n");
        return;
    }
    
    Node* temp = current->next;
    current->next = temp->next;
    free(temp);
}

// 查找节点
Node* search(Node* head, int data) {
    Node* current = head;
    while (current != NULL) {
        if (current->data == data) {
            return current;
        }
        current = current->next;
    }
    return NULL;
}

// 打印链表
void printList(Node* head) {
    Node* current = head;
    printf("链表内容: ");
    while (current != NULL) {
        printf("%d -> ", current->data);
        current = current->next;
    }
    printf("NULL\n");
}

// 获取链表长度
int getLength(Node* head) {
    int length = 0;
    Node* current = head;
    while (current != NULL) {
        length++;
        current = current->next;
    }
    return length;
}

// 释放链表内存
void freeList(Node** head) {
    Node* current = *head;
    Node* next;
    
    while (current != NULL) {
        next = current->next;
        free(current);
        current = next;
    }
    
    *head = NULL;
}

// 主函数测试链表功能
int main() {
    Node* head = NULL;
    
    // 在尾部插入节点
    insertAtTail(&head, 10);
    insertAtTail(&head, 20);
    insertAtTail(&head, 30);
    printList(head);
    
    // 在头部插入节点
    insertAtHead(&head, 5);
    printList(head);
    
    // 在指定位置插入节点
    insertAtPosition(&head, 15, 2);
    printList(head);
    
    // 删除节点
    deleteAtHead(&head);
    printList(head);
    
    deleteAtTail(&head);
    printList(head);
    
    deleteAtPosition(&head, 1);
    printList(head);
    
    // 查找节点
    int searchData = 20;
    Node* found = search(head, searchData);
    if (found != NULL) {
        printf("找到节点 %d\n", searchData);
    } else {
        printf("未找到节点 %d\n", searchData);
    }
    
    // 获取链表长度
    printf("链表长度: %d\n", getLength(head));
    
    // 释放链表内存
    freeList(&head);
    
    return 0;
}