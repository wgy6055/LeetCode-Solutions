import Foundation

// f(n) = f(n-1) + f(n-2), n > 2
//public func climbStairs(_ n: Int) -> Int {
//    guard n > 2 else { return n }
//    return climbStairs(n-1) + climbStairs(n-2)
//}

public func climbStairs(_ n: Int) -> Int {
    guard n > 2 else { return n }
    var a = Array.init(repeating: 1, count: n)
    a[0] = 1
    a[1] = 2
    for i in 2..<n {
        a[i] = a[i-1] + a[i-2]
    }
    return a[n-1]
}
