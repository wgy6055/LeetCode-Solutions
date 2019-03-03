import Foundation

public func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
    guard let head = head else { return nil }
    let dummy = ListNode(0)
    dummy.next = head
    var pre: ListNode? = dummy
    
    for _ in 0..<m - 1 {
        pre = pre?.next
    }
    
    var start = pre?.next, then = start?.next
    for _ in 0..<n - m {
        start?.next = then?.next
        then?.next = pre?.next
        pre?.next = then
        then = start?.next
    }
    
    return dummy.next
}
