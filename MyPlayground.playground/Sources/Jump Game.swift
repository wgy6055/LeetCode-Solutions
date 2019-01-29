import Foundation

public func canJump(_ nums: [Int]) -> Bool {
    var maxPos = 0
    for i in 0..<nums.count {
        if i > maxPos {
            return false
        }
        maxPos = max(maxPos, i + nums[i])
    }
    return true
}
