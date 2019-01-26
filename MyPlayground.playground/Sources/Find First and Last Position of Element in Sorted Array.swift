import Foundation

public func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    let start = findFirst(nums, target, 0, nums.count - 1)
    
    guard start != -1 else {
        return [-1, -1]
    }
    
    return [start, findLast(nums, target, start, nums.count - 1)]
}

fileprivate func findFirst(_ nums: [Int], _ target: Int, _ from: Int, _ to: Int) -> Int {
    var res = -1
    var left = from, right = to
    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] >= target {
            right = mid - 1
        } else {
            left = mid + 1
        }
        if nums[mid] == target {
            res = mid
        }
    }
    return res
}

fileprivate func findLast(_ nums: [Int], _ target: Int, _ from: Int, _ to: Int) -> Int {
    var res = -1
    var left = from, right = to
    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] <= target {
            left = mid + 1
        } else {
            right = mid - 1
        }
        if nums[mid] == target {
            res = mid
        }
    }
    return res
}
