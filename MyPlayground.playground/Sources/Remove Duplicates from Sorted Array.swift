import Foundation

public func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count }
    
    var i = 0
    var j = 1
    while j < nums.count {
        if nums[i] != nums[j] {
            i += 1
            nums[i] = nums[j]
        }
        j += 1
    }
    return i + 1
}
