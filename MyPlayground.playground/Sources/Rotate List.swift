import Foundation

public func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    let length = listLength(head)
    
    guard length > 0 else { return head }
    
    var offset = k % length
    
    guard offset > 0 else { return head }
    
    var p = head, tail = head
    for _ in 1...offset {
        tail = tail?.next
    }
    while tail?.next != nil {
        p = p?.next
        tail = tail?.next
    }
    tail?.next = head
    tail = p?.next
    p?.next = nil
    
    return tail
}

public func listLength(_ head: ListNode?) -> Int {
    var len = 0
    guard let head = head else { return len }
    
    var p: ListNode? = head
    
    while p != nil {
        len += 1
        p = p?.next
    }
    
    return len
}
