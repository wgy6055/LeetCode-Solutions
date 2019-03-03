import Foundation

public func grayCode(_ n: Int) -> [Int] {
    var res = [Int]()
    for i in 0..<(1<<n) {
        res.append(i ^ i>>1)
    }
    return res
}
