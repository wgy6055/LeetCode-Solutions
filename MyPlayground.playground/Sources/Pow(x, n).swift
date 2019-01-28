import Foundation

public func myPow(_ x: Double, _ n: Int) -> Double {
    guard x != 0 else { return 0 }
    guard n != 0 else { return 1 }
    
    var res = helper(abs(x), abs(n))
    if n < 0 {
        res = 1 / res
    }
    if x < 0 && n % 2 != 0 {
        res = -res
    }
    
    return res
}

fileprivate func helper(_ x: Double, _ n: Int) -> Double {
    guard n != 0 else { return 1 }
    guard n != 1 else { return x }
    
    if n % 2 == 0 {
        return helper(x * x, n / 2)
    } else {
        return helper(x, n - 1) * x
    }
}
