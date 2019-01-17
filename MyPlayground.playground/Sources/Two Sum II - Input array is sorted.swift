import Foundation

public func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    guard !numbers.isEmpty else { return [] }
    
    var low = 0, high = numbers.count - 1
    while low != high {
        if numbers[low] + numbers[high] == target {
            return [low + 1, high + 1]
        }
        if numbers[low] + numbers[high] > target {
            high -= 1
        } else {
            low += 1
        }
    }
    return []
}
