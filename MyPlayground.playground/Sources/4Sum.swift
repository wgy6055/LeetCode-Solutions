import Foundation

public func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    var nums = nums.sorted(by: <)
    var res = [[Int]]()
    
    guard nums.count > 3 else { return res }
    
    var twoSum = 0, threeSum = 0
    for i in 0...nums.count - 4 {
        guard i == 0 || nums[i] != nums[i - 1] else {
            continue
        }
        threeSum = target - nums[i]
        for j in i + 1...nums.count - 3 {
            guard j == i + 1 || nums[j] != nums[j - 1] else {
                continue
            }
            twoSum = threeSum - nums[j]
            var left = j + 1, right = nums.count - 1
            while left < right {
                if nums[left] + nums[right] == twoSum {
                    res.append([nums[i], nums[j], nums[left], nums[right]])
                    repeat {
                        left += 1
                    } while left < right && nums[left] == nums[left - 1]
                } else if nums[left] + nums[right] < twoSum {
                    repeat {
                        left += 1
                    } while left < right && nums[left] == nums[left - 1]
                } else {
                    repeat {
                        right -= 1
                    } while left < right && nums[right] == nums[right + 1]
                }
            }
        }
    }
    
    return res
}
