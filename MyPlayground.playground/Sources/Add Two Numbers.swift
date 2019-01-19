import Foundation

public func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var carry = 0, l1 = l1, l2 = l2
    let head = ListNode(0)
    var pointer = head
    
    while l1 != nil || l2 != nil || carry != 0 {
        if l1 != nil {
            carry += l1!.val
            l1 = l1?.next
        }
        if l2 != nil {
            carry += l2!.val
            l2 = l2?.next
        }
        pointer.next = ListNode(carry % 10)
        pointer = pointer.next!
        carry /= 10
    }
    
    return head.next
}
