import Foundation

public func isBalanced(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    
    return helper(root) != -1
}

private func helper(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    
    let left = helper(root.left), right = helper(root.right)
    if left == -1 || right == -1 {
        return -1
    }
    if abs(left - right) > 1 {
        return -1
    }
    
    return max(left, right) + 1
}
