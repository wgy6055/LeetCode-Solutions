import Foundation

public func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard let _ = headA, let _ = headB else { return nil }
    
    var pa = headA, pb = headB
    
    while pa !== pb {
        pa = pa == nil ? headB : pa?.next
        pb = pb == nil ? headA : pb?.next
    }
    
    return pa
}
