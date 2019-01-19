import Foundation


public func rotate(_ nums: inout [Int], _ k: Int) {
    let offset = k % nums.count
    
    reverse(&nums, 0, nums.count - 1)
    reverse(&nums, 0, offset - 1)
    reverse(&nums, offset, nums.count - 1)
}

private func reverse(_ nums: inout [Int], _ from: Int, _ to: Int) {
    var from = from, to = to
    while from < to {
        (nums[from], nums[to]) = (nums[to], nums[from])
        from += 1
        to -= 1
    }
}
