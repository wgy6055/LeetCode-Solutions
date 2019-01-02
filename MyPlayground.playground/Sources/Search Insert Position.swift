import Foundation

//public func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//    guard !nums.isEmpty else { return 0 }
//
//    for i in nums.indices {
//        if nums[i] >= target {
//            return i
//        }
//    }
//
//    return nums.count
//}

/// 二分法
public func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var l = 0, h = nums.count - 1
    while l <= h {
        let mid = (l + h) / 2
        if nums[mid] == target {
            return mid
        }
        if nums[mid] > target {
            h = mid - 1
        } else {
            l = mid + 1
        }
    }
    return l
}
