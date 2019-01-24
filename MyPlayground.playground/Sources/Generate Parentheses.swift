import Foundation

public func generateParenthesis(_ n: Int) -> [String] {
    var res = [String]()
    helper(&res, "", 0, 0, n)
    return res
}

fileprivate func helper(_ res: inout [String], _ current: String, _ open: Int, _ close: Int, _ max: Int) {
    if current.count == max * 2 {
        res.append(current)
        return
    }
    if open < max {
        helper(&res, current + "(", open + 1, close, max)
    }
    if close < open {
        helper(&res, current + ")", open, close + 1, max)
    }
}
