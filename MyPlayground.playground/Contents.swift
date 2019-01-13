import Foundation

public func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return helper(root)
}

private func helper(_ root: TreeNode?) -> Int {
    guard let root = root else { return Int.max }
    
    if root.left == nil && root.right == nil {
        return 1
    }
    
    return min(helper(root.left), helper(root.right)) + 1
}
