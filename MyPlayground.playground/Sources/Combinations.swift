import Foundation

public func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var res = [[Int]]()
    guard n >= k else { return res }
    
    var current = [Int]()
    
    let nums = [Int](1...n)
    helper(&res, nums, &current, 0, k)
    return res
}

fileprivate func helper(_ res: inout [[Int]], _ nums: [Int], _ current: inout [Int], _ index: Int, _ k: Int) {
    if current.count == k {
        res.append(current)
        return
    }
    for i in index..<nums.count {
        current.append(nums[i])
        helper(&res, nums, &current, i + 1, k)
        current.removeLast()
    }
}
