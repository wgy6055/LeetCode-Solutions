import Foundation

public func plusOne(_ digits: [Int]) -> [Int] {
    guard !digits.isEmpty else { return digits }
    var nums = [Int](digits.reversed())
    nums[0] += 1
    
    for i in nums.indices {
        if nums[i] > 9 {
            nums[i] = 0
            if i + 1 >= nums.count {
                nums.append(1)
            } else {
                nums[i + 1] += 1
            }
        }
    }
    
    return nums.reversed()
}
