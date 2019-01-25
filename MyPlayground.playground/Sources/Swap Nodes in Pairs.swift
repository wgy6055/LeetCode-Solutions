import Foundation

public func swapPairs(_ head: ListNode?) -> ListNode? {
    let dummy = ListNode(0)
    dummy.next = head
    var pre: ListNode? = dummy, current = dummy.next
    
    while current != nil && current?.next != nil {
        let next = current?.next
        let post = next?.next
        
        pre?.next = next
        next?.next = current
        current?.next = post
        
        pre = current
        current = post
    }
    
    return dummy.next
}
