import Foundation

public func search(_ nums: [Int], _ target: Int) -> Bool {
    var left = 0, right = nums.count - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        if nums[mid] == target {
            return true
        }
        if nums[left] < nums[mid] {
            if nums[left] <= target && nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        } else if nums[left] > nums[mid] {
            if nums[right] >= target && nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } else {
            left += 1
        }
    }
    
    return false
}
