import Foundation

//public func isSymmetric(_ root: TreeNode?) -> Bool {
//    return isSameTree(root?.left, reverted(root?.right))
//}
//
//private func reverted(_ root: TreeNode?) -> TreeNode? {
//    if root == nil {
//        return root
//    }
//    let res = TreeNode((root?.val)!)
//    res.left = reverted(root?.right)
//    res.right = reverted(root?.left)
//    return res
//}

public func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    return helper(root.left, root.right)
}

private func helper(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil {
        return true
    }
    if p == nil || q == nil || p?.val != q?.val {
        return false
    }
    return helper(p?.left, q?.right) && helper(p?.right, q?.left)
}
