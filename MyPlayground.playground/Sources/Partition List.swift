import Foundation

public func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    let preDummy = ListNode(0), postDummy = ListNode(0)
    var pre: ListNode? = preDummy, post: ListNode? = postDummy
    var node = head
    
    while let _node = node {
        let next = _node.next
        _node.next = nil
        
        if _node.val < x {
            pre?.next = _node
            pre = pre?.next
        } else {
            post?.next = _node
            post = post?.next
        }
        
        node = next
    }
    
    pre?.next = postDummy.next
    
    return preDummy.next
}
