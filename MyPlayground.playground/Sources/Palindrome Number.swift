import Foundation

/// 9. 回文数
//public func isPalindrome(_ x: Int) -> Bool {
//    guard x >= 0 else { return false }
//    var rev = 0
//    var y = x
//    while y != 0 {
//        let pop = y % 10
//        y /= 10
//        rev = rev * 10 + pop
//    }
//    return rev == x
//}

public func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }
    
    var rev = 0
    var a = x
    while a > rev {
        rev = rev * 10 + a % 10
        a /= 10
    }
    
    return a == rev || a == rev / 10
}
