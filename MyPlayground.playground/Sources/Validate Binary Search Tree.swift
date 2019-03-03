import Foundation

public func isValidBST(_ root: TreeNode?) -> Bool {
    return helper(root, nil, nil)
}

fileprivate func helper(_ root: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
    guard let root = root else { return true }
    
    if let min = min, root.val <= min {
        return false
    }
    if let max = max, root.val >= max {
        return false
    }
    
    return helper(root.left, min, root.val) && helper(root.right, root.val, max)
}
