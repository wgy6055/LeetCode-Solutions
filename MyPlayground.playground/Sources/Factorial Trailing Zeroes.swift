import Foundation

public func trailingZeroes(_ n: Int) -> Int {
    var sum = 0, num = n
    while num != 0 {
        num /= 5
        sum += num
    }
    return sum
}
