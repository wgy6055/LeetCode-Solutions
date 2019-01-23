import Foundation

public func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var nums = nums.sorted(by: <)
    var res = 0
    
    guard nums.count > 2 else { return res }
    res = nums[0] + nums[1] + nums[2]
    
    for i in 0..<nums.count {
        var left = i + 1, right = nums.count - 1
        while left < right {
            let sum = nums[i] + nums[left] + nums[right]
            if abs(res - target) > abs(target - sum) {
                res = sum
            }
            if sum < target {
                repeat {
                    left += 1
                } while left < right && nums[left] == nums[left - 1]
            } else {
                repeat {
                    right -= 1
                } while left < right && nums[right] == nums[right + 1]
            }
        }
    }
    return res
}
