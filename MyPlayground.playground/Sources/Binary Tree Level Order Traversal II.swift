import Foundation

public func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var res = [[Int]]()
    var queue = [TreeNode]()
    
    if let root = root {
        queue.append(root)
    }
    
    while queue.count != 0 {
        let size = queue.count
        var arr = [Int]()
        
        for _ in 1...size {
            if let node = queue.first {
                arr.append(node.val)
                queue.remove(at: 0)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        
        res.insert(arr, at: 0)
    }
    return res
}

//var node1 = TreeNode(3)
//var node2 = TreeNode(9)
//var node3 = TreeNode(20)
//var node4 = TreeNode(15)
//var node5 = TreeNode(7)
//
//node1.left = node2
//node1.right = node3
//node3.left = node4
//node3.right = node5
//levelOrderBottom(node1)
