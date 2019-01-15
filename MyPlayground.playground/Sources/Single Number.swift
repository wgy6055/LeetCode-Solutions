import Foundation

public func singleNumber(_ nums: [Int]) -> Int {
    var a = 0
    for num in nums {
        a ^= num
    }
    return a
}
