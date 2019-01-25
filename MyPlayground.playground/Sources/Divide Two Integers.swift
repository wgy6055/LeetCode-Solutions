import Foundation

public func divide(_ dividend: Int, _ divisor: Int) -> Int {
    let isNegative = (dividend < 0) != (divisor < 0)
    var dividend = abs(dividend), divisor = abs(divisor), count = 0
    while dividend >= divisor {
        var shift = 0
        while dividend >= (divisor << shift) {
            shift += 1
        }
        dividend -= (divisor << (shift - 1))
        count += (1 << (shift - 1))
    }
    let res = isNegative ? -count : count
    guard (-2147483648...2147483647).contains(res) else { return 2147483647 }
    return res
}
