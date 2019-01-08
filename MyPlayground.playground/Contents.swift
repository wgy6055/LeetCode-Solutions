import Foundation

public func addBinary(_ a: String, _ b: String) -> String {
    var sum = 0, carry = 0, res = ""
    var i = a.count - 1, j = b.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
        sum = carry
        if i >= 0 {
            let index = a.index(a.startIndex, offsetBy: i)
            sum += Int(String(a[index]))!
            i -= 1
        }
        if j >= 0 {
            let index = b.index(b.startIndex, offsetBy: j)
            sum += Int(String(b[index]))!
            j -= 1
        }
        carry = sum / 2
        sum %= 2
        res = "\(sum)" + res
    }
    
    return res
}

addBinary("101", "1")
