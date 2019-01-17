import Foundation

public func convertToTitle(_ n: Int) -> String {
    guard n != 0 else { return "" }
    
    var title = ""
    var num = n
    while num != 0 {
        num -= 1
        let remain: UInt32 = UInt32(num % 26)
        num /= 26
        title = String(Character(UnicodeScalar(UnicodeScalar("A").value + remain)!)) + title
    }
    return title
}
