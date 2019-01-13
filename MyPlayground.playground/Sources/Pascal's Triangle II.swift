import Foundation

public func getRow(_ rowIndex: Int) -> [Int] {
    var res = [Int]()
    res.append(1)
    
    guard rowIndex > 0 else {
        return res
    }
    
    for i in 1...rowIndex {
        var cur = [Int](repeating: 1, count: i + 1)
        if i >= 2 {
            for j in 1...i-1 {
                cur[j] = res[j-1] + res[j]
            }
        }
        res = cur
    }
    return res
}
