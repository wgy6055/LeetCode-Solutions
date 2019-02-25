import Foundation

public func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var stack = [TreeNode]()
    var res = [Int]()
    var p = root
    
    while !stack.isEmpty || p != nil {
        if p != nil {
            stack.append(p!)
            p = p?.left
        } else {
            p = stack.removeLast()
            res.append(p!.val)
            p = p?.right
        }
    }
    
    return res
}
