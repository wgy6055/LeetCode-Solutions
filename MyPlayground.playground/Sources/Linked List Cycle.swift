import Foundation

public func hasCycle(_ head: ListNode?) -> Bool {
    if head == nil || head?.next == nil {
        return false
    }
    
    var slow = head, fast = head?.next
    
    while fast !== slow {
        if fast == nil || fast?.next == nil {
            return false
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    return true
}
