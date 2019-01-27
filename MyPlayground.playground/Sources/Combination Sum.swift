import Foundation

public func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var res = [[Int]](), path = [Int]()
    deepFirstSearch(candidates.sorted(by: <), target, &res, &path, 0)
    return res
}

fileprivate func deepFirstSearch(_ candidates: [Int], _ target: Int, _ res: inout [[Int]], _ path: inout [Int], _ index: Int) {
    if target == 0 {
        res.append(path)
        return
    }
    for i in index..<candidates.count {
        guard candidates[i] <= target else {
            break
        }
        path.append(candidates[i])
        deepFirstSearch(candidates, target - candidates[i], &res, &path, i)
        path.removeLast()
    }
}
