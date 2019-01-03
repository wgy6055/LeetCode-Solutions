import Foundation

public func maxSubArray(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    
    var sum = nums.first!
    var res = nums.first!
    for i in 1..<nums.count {
        sum = max(sum + nums[i], nums[i])
        res = max(sum, res)
    }
    
    return res
}
