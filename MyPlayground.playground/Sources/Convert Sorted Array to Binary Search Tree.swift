import Foundation

public func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard !nums.isEmpty else { return nil }
    
    return buildTree(nums, start: 0, end: nums.count - 1)
}

private func buildTree(_ nums: [Int], start: Int, end: Int) -> TreeNode? {
    guard start <= end else { return nil }
    
    let mid = (start + end) / 2
    let root = TreeNode(nums[mid])
    root.left = buildTree(nums, start: start, end: mid - 1)
    root.right = buildTree(nums, start: mid + 1, end: end)
    return root
}
