import Foundation

public func sortColors(_ nums: inout [Int]) {
    var red = 0, blue = nums.count - 1, i = 0
    
    while i <= blue {
        if nums[i] == 0 {
            (nums[i], nums[red]) = (nums[red], nums[i])
            i += 1
            red += 1
        } else if nums[i] == 1 {
            i += 1
        } else {
            (nums[i], nums[blue]) = (nums[blue], nums[i])
            blue -= 1
        }
    }
}
