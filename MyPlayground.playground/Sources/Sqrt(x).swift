import Foundation

public func mySqrt(_ x: Int) -> Int {
    guard x >= 2 else { return x }
    
    var left = 0, right = x / 2 + 1
    var mid = 0
    
    while left <= right {
        mid = (right - left) / 2 + left
        if mid * mid == x {
            return mid
        } else if mid * mid < x {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return right
}
