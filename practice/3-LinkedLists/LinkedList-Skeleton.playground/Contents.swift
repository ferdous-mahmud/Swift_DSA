import Foundation
import Darwin

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

//let node3 = Node(30)
//let node2 = Node(20, node3)
//let node1 = Node(10, node2) // Head


class LinkList {
    private var head: Node?

    // O(1)
    func addFront(_ data: Int) {
        let newNode = Node(data, head)
        head = newNode
    }

    // O(1)
    func getFirst() -> Int? {
        return head?.data
    }

    // O(n)
    func addBack(_ data: Int) {
        let newNode = Node(data)
        
        if head == nil {
            head = newNode
            return
        }
        
        var node = head!
        while node.next != nil {
            node = node.next!
        }
        
        node.next = newNode
    }

    func getLast() -> Int? {
        var node = head!
        
        while node.next != nil {
            node = node.next!
        }
        return node.data
    }

    // O(n)
    func insert(position: Int, data: Int) {
        
        if position == 0 {
            addFront(data)
            return
        }
        
        
        let newNode = Node(data)
        var currentPosition = 0
        var node = head!
        
        while currentPosition != position - 1 {
            node = node.next!
            currentPosition += 1
        }
        
        let temp = node.next
        node.next = newNode
        node = node.next!
        node.next = temp
    }

    // O(1)
    func deleteFirst() {
        head = head?.next
    }

    // O(n)
    func deleteLast() {
        var node = head!
        var previousNode: Node?
        
        while node.next != nil {
            previousNode = node
            node = node.next!
        }
        previousNode?.next = nil
    }

    // O(n)
    func delete(at position: Int) {
        var n = position
        var node = head
        var previousNode: Node?
        
        while n != 0 {
            previousNode = node
            node = node?.next
            n -= 1
        }
        previousNode?.next = node?.next
    }

    // O(1)
    var isEmpty: Bool {
        if head != nil {
            return false
        }
        return true
    }

    // O(1)
    func clear() {
        head = nil
    }

    // O(n)
    func printLinkedList() {
        if head == nil { return }

        var result = [Int]()
        var node = head
        result.append(node!.data)

        while node?.next != nil {
            result.append(node!.next!.data)
            node = node?.next
        }

        print(result)
    }
}

let linkedList = LinkList()

linkedList.addFront(30)
linkedList.addFront(20)
linkedList.addFront(10)


linkedList.addBack(40)
linkedList.addBack(50)
linkedList.addBack(60)

linkedList.insert(position: 3, data: 100)
linkedList.insert(position: 4, data: 90)

linkedList.deleteFirst()
linkedList.deleteLast()

print(linkedList.isEmpty)

print("First : \(linkedList.getFirst()!)")
print("Last: \(linkedList.getLast()!)")


linkedList.printLinkedList()

linkedList.clear()
linkedList.insert(position: 0, data: 10)
linkedList.insert(position: 1, data: 20)
linkedList.insert(position: 2, data: 30)

linkedList.delete(at: 1)
linkedList.delete(at: 1)

linkedList.printLinkedList()

