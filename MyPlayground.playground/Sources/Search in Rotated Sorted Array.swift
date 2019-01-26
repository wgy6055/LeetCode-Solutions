import Foundation

public func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return mid
        }
        if nums[left] <= nums[mid] {
            if nums[mid] > target && target >= nums[left] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        } else {
            if nums[mid] < target && target <= nums[right] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
    }
    
    return -1
}
