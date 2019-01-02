import Foundation

public func countAndSay(_ n: Int) -> String {
    guard n > 1 else { return "1" }
    
    let pre = countAndSay(n - 1)
    var char = String(pre.first!)
    var count = 0
    var result = ""
    print(pre)
    
    for i in pre.indices {
        if char == String(pre[i]) {
            count += 1
        } else {
            result += "\(count)\(char)"
            count = 1
            char = String(pre[i])
        }
    }
    
    result += "\(count)\(char)"
    
    return result
}
