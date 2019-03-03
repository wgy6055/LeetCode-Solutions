import Foundation

public func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    
    guard !nums.isEmpty else { return res }
    
    var current = [Int]()
    let nums = nums.sorted(by: <)
    helper(&res, nums, &current, 0)
    
    return res
}

fileprivate func helper(_ res: inout [[Int]], _ nums: [Int], _ current: inout [Int], _ index: Int) {
    res.append(current)
    
    for i in index..<nums.count {
        if i > 0 && nums[i] == nums[i - 1] && i != index {
            continue
        }
        current.append(nums[i])
        helper(&res, nums, &current, i + 1)
        current.removeLast()
    }
}
