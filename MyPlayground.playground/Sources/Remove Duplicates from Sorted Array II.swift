import Foundation

public func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 2 else { return nums.count }
    
    var index = 1
    
    for i in 2..<nums.count {
        if nums[index] != nums[index - 1] || nums[index] != nums[i] {
            index += 1
            nums[index] = nums[i]
        }
    }
    
    return index + 1
}
