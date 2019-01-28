import Foundation

public func reverseList(_ head: ListNode?) -> ListNode? {
    var first = head, temp: ListNode? = nil
    while first != nil {
        let second = first?.next
        
        first?.next = temp
        temp = first
        first = second
    }
    return temp
}
