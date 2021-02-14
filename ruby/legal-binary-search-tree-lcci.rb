# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {Boolean}
# def is_valid_bst(root)
#     def helper(root, lower = -Float::MAX, upper = Float::MAX)
#         return true unless root
#         return false if root.val <= lower or root.val >= upper
#         helper(root.left, lower, root.val) && helper(root.right, root.val, upper)
#     end
#     return true unless root
#     helper(root)
# end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
    stack = []
    inorder = -Float::MAX
    while !stack.empty? or root
        while root
            stack << root
            root = root.left
        end
        root = stack.pop
        return false if root.val <= inorder
        inorder = root.val
        root = root.right
    end
    true
end