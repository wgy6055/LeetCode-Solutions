# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @res = nil

# @param {TreeNode} root
# @return {String[][]}
# def print_tree(root)
#     def get_height(root)
#         return 0 unless root
#         1 + [get_height(root.left), get_height(root.right)].max
#     end
#     def fill(root, i, l, r)
#         return unless root
#         @res[i][(l + r) / 2] = "#{root.val}"
#         fill root.left, i + 1, l, (l + r) / 2
#         fill root.right, i + 1, (l + r + 1) / 2, r
#     end
#     height = get_height root
#     @res = Array.new(height) { Array.new(2.pow(height) - 1) { "" } }
#     fill root, 0, 0, @res.first.size()
#     @res
# end

@res = nil

class Item
    attr_accessor :node, :level, :left, :right
    def initialize(node, level, left, right)
        @node = node
        @level = level
        @left = left
        @right = right
    end
end

def print_tree(root)
    def get_height(root)
        return 0 unless root
        height = 0
        queue = Queue.new()
        queue << root
        while !queue.empty?
            height += 1
            temp = Queue.new()
            while !queue.empty?
                node = queue.pop()
                temp << node.left if node.left
                temp << node.right if node.right
            end
            queue = temp
        end
        height
    end

    def fill(root, i, l, r)
        queue = Queue.new()
        queue << Item.new(root, 0, 0, @res.first.size())
        while !queue.empty?
            item = queue.pop()
            @res[item.level][(item.left + item.right) / 2] = "#{item.node.val}"
            queue << Item.new(item.node.left, item.level + 1, item.left, (item.left + item.right) / 2) if item.node.left
            queue << Item.new(item.node.right, item.level + 1, (item.left + item.right + 1) / 2, item.right) if item.node.right
        end
    end

    height = get_height root
    @res = Array.new(height) { Array.new(2.pow(height) - 1) { "" } }
    fill root, 0, 0, @res.first.size()
    @res
end

root = TreeNode.new(10)
left = TreeNode.new(5)
right = TreeNode.new(15)
left1 = TreeNode.new(6)
right1 = TreeNode.new(20)
root.left = left
root.right = right
right.left = left1
right.right = right1

print_tree root