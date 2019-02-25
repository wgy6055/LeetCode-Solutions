import Foundation

public func deleteDuplicatesII(_ head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }
    guard let _ = head.next else { return head }
    
    let dummy = ListNode(0)
    dummy.next = head
    var p: ListNode? = dummy
    
    while p?.next != nil && p?.next?.next != nil {
        if p?.next?.val == p?.next?.next?.val {
            let val = p?.next?.val
            while p?.next != nil && p?.next?.val == val {
                p?.next = p?.next?.next
            }
        } else {
            p = p?.next
        }
    }
    
    return dummy.next
}
