import Foundation

//public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    guard !nums.isEmpty else { return 0 }
//    guard nums.count > 1 else { return nums.first! == val ? 0 : 1}
//
//    var i = 0
//    var j = nums.count - 1
//
//    while i <= j {
//        if nums[i] == val {
//            if nums[j] != val {
//                nums[i] = nums[j]
//            }
//            j -= 1
//        } else {
//            i += 1
//        }
//    }
//
//    return i
//}

public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    var j = 0
    
    while j < nums.count {
        if nums[j] != val {
            nums[i] = nums[j]
            i += 1
        }
        j += 1
    }
    
    return i
}
