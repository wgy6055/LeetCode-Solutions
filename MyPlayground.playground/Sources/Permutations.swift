import Foundation

public func permute(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]](), cur = [Int](), isVisited = [Bool](repeating: false, count: nums.count)
    deepFirstSearch(nums, &isVisited, &res, &cur)
    return res
}

fileprivate func deepFirstSearch(_ nums: [Int], _ isVisited: inout [Bool], _ res: inout [[Int]], _ cur: inout [Int]) {
    if cur.count == nums.count {
        res.append(cur)
        return
    }
    
    for (i, num) in nums.enumerated() where !isVisited[i] {
        cur.append(num)
        isVisited[i] = true
        deepFirstSearch(nums, &isVisited, &res, &cur)
        isVisited[i] = false
        cur.removeLast()
    }
}
