import Foundation

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

let node3 = Node(30)
let node2 = Node(20, node3)
let node1 = Node(10, node2) // Head

func printLinkedList (_ head: Node?){
    if head == nil {
        return
    }
    
    var node = head
    print(node!.data)
    
    while node!.next != nil {
        print(node!.next!.data)
        node = node?.next
    }
}

printLinkedList(node1)

//class LinkList {
//    private var head: Node?
//
//    func addFront(_ data: Int) {
//    }
//
//    func getFirst() -> Int? {
//        return 0
//    }
//
//    func addBack(_ data: Int) {
//    }
//
//    func getLast() -> Int? {
//        return nil
//    }
//
//    func insert(position: Int, data: Int) {
//    }
//
//    func deleteFirst() {
//    }
//
//    func deleteLast() {
//    }
//
//    func delete(at position: Int) {
//    }
//
//    var isEmpty: Bool {
//        return false
//    }
//
//    func clear() {
//    }
//
//    func printLinkedList() {
//        if head == nil { return }
//
//        var result = [Int]()
//        var node = head
//        result.append(node!.data)
//
//        while node?.next != nil {
//            result.append(node!.next!.data)
//            node = node?.next
//        }
//
//        print(result)
//    }
//}
//
//let linkedList = LinkList()

