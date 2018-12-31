import Foundation

/// 1. 两数之和
public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...nums.count - 2 {
        let n1 = nums[i]
        for j in i+1...nums.count - 1 {
            let n2 = nums[j]
            if target == n1 + n2 {
                return [i, j]
            }
        }
    }
    return []
}
