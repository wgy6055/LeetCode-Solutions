import Foundation

public func majorityElement(_ nums: [Int]) -> Int {
    guard let first = nums.first else { return -1 }
    var res = first, count = 1
    for i in 1..<nums.count {
        if nums[i] == res {
            count += 1
        } else {
            count -= 1
        }
        if count == 0 {
            res = nums[i]
            count += 1
        }
    }
    return res
}
