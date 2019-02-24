import Foundation

public func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    guard !matrix.isEmpty else { return false }
    guard !matrix.first!.isEmpty else { return false }
    
    let row = searchRow(matrix, target)
    guard row != -1 else { return false }
    let col = searchCol(matrix[row], target)
    guard col != -1 else { return false }
    
    return true
}

fileprivate func searchRow(_ matrix: [[Int]], _ target: Int) -> Int {
    var low = 0, high = matrix.count - 1
    guard let col = matrix.first?.count else { return -1 }
    while low <= high {
        let mid = (low + high) / 2
        if matrix[mid][0] <= target && matrix[mid][col - 1] >= target {
            return mid
        }
        if matrix[mid][0] > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}

fileprivate func searchCol(_ nums: [Int], _ target: Int) -> Int {
    var low = 0, high = nums.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if nums[mid] == target {
            return mid
        }
        if nums[mid] > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}
