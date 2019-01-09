import Foundation

public func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard let _ = head?.next else { return head }
    
    var i = head
    var j = head?.next
    
    while j != nil {
        if i?.val != j?.val {
            i?.next = j
            i = i?.next
        }
        j = j?.next
    }
    
    i?.next = nil
    
    return head
}
