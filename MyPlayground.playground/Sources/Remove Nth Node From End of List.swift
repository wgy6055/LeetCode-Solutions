import Foundation

public func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let dummy = ListNode(0)
    dummy.next = head
    var p1: ListNode? = dummy, p2: ListNode? = dummy
    for _ in 1...n + 1 {
        p1 = p1?.next
    }
    while p1 != nil {
        p1 = p1?.next
        p2 = p2?.next
    }
    p2?.next = p2?.next?.next
    return dummy.next
}
