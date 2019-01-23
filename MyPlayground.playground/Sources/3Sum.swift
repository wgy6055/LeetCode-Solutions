import Foundation

public func threeSum(_ nums: [Int]) -> [[Int]] {
    var nums = nums.sorted(by: <)
    var res = [[Int]]()
    
    guard nums.count > 2 else { return res }
    
    for i in 0...nums.count - 3 {
        if i == 0 || nums[i] != nums[i - 1] {
            let remain = -nums[i]
            var left = i + 1, right = nums.count - 1
            
            while left < right {
                if nums[left] + nums[right] == remain {
                    var temp = [Int]()
                    temp.append(contentsOf: [nums[i], nums[left], nums[right]])
                    res.append(temp)
                    
                    repeat {
                        left += 1
                    } while left < right && nums[left] == nums[left - 1]
                    repeat {
                        right -= 1
                    } while left < right && nums[right] == nums[right + 1]
                } else if nums[left] + nums[right] < remain {
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
