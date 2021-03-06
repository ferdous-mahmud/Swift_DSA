import UIKit

/*
 Find Merge Point of Two Lists

 Given pointers to the head nodes of 2 linked lists that merge together at some point, find the node where the two lists merge. The merge point is where both lists point to the same node, i.e. they reference the same memory location. It is guaranteed that the two head nodes will be different, and neither will be NULL. If the lists share a common node, return that node's data value.

 Note: After the merge point, both lists will share the same node pointers.
 
 */

class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

func length(_ head: Node?) -> Int {
    if head == nil {
        return 0
    }
    
    var len = 0
    var current = head
    while current != nil {
        len += 1
        current = current?.next
    }
    return len
}

func printLinkedList(_ head: Node?) {
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

// Time Complexity = O(n ^ 2)
func findMergeBrout(headA: Node?, headB: Node?) -> Int? {
    let m = length(headA)
    let n = length(headB)
    
    var currentA = headA
    
    for _ in 0...m-1 {
        var currentB = headB
        for _ in 0...n-1 {
            let A = currentA?.data
            let B = currentB?.data
            
            if A == B {
                return A
            }
            currentB = currentB?.next
        }
        currentA = currentA?.next
    }
    
    return nil
}

// Time Complexity = O(n)
func findMergeUsingDictonary(headA: Node?, headB: Node?) -> Int? {
    
    var d = [Int: Bool]()
    
    let m = length(headA)
    let n = length(headB)
    
    var node1 = headA
    for _ in 1...m {
        d[node1!.data] = true
        node1 = node1?.next
    }
    
    var node2 = headB
    for _ in 1...n {
        if d[node2!.data] == true {
            return node2!.data
        }
        node2 = node2?.next
    }
    
    return nil
}

// Time Complexity = O(n) -> Without extra data structure
func findMergeUsingSubtract(headA: Node?, headB: Node?) -> Int? {
    
    let m = length(headA)
    let n = length(headB)
    var node1 = headA
    var node2 = headB
    var sub = 0
    
    if m >= n {
        sub = m - n
        for _ in 1...sub {
            node1 = node1?.next
        }
        
        for _ in 1...n {
            if node1?.data == node2?.data {
                return node1!.data
            }
            
            node2 = node2?.next
            node1 = node1?.next
        }
    } else {
        sub = n - m
        for _ in 1...sub {
            node2 = node2?.next
        }
        
        for _ in 1...m {
            if node1?.data == node2?.data {
                return node1!.data
            }
            
            node2 = node2?.next
            node1 = node1?.next
        }
    }
    
    return nil
}

// 1 2 3 4 5 6
let node6 = Node(6)
let node5 = Node(5, node6)
let node4 = Node(4, node5)
let node3 = Node(3, node4)
let node2 = Node(2, node3)
let node1 = Node(1, node2)

// 10 11 12 13 4 5 6
let node11 = Node(11, node4)
let node10 = Node(10, node11)

printLinkedList(node1)
printLinkedList(node10)

findMergeBrout(headA: node1, headB: node10)
findMergeUsingDictonary(headA: node1, headB: node10)
findMergeUsingSubtract(headA: node10, headB: node1)
