import Foundation

public func maxArea(_ height: [Int]) -> Int {
    var res = 0
    guard height.count >= 2 else {
        return res
    }
    var start = 0, end = height.count - 1
    
    while start < end {
        res = max(res, (end - start) * min(height[start], height[end]))
        if height[start] > height[end] {
            end -= 1
        } else {
            start += 1
        }
    }
    
    return res
}
