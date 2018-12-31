import Foundation

// 21. 合并两个有序链表
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard l1 != nil && l2 != nil else { return l1 ?? l2 }
    // head node
    let l3: ListNode? = ListNode(0)
    var _l3: ListNode? = nil
    var _l1 = l1
    var _l2 = l2
    
    // keep previous node
    var _pre = l3
    _pre?.next = _l3
    
    while _l1 != nil && _l2 != nil {
        guard let v1 = _l1?.val, let v2 = _l2?.val else { break }
        if v1 < v2 {
            _l3 = ListNode(v1)
            _l1 = _l1?.next
        } else {
            _l3 = ListNode(v2)
            _l2 = _l2?.next
        }
        _pre?.next = _l3
        _pre = _l3
    }
    
    if _l1 == nil {
        _pre?.next = _l2
    } else if _l2 == nil {
        _pre?.next = _l1
    }
    
    return l3?.next
}
