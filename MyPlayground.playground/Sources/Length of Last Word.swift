import Foundation

//public func lengthOfLastWord(_ s: String) -> Int {
//
//    return s.components(separatedBy: " ").filter { (str) -> Bool in
//        return !str.isEmpty
//        }.last?.count ?? 0
//}

public func lengthOfLastWord(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    
    var res = 0
    for i in s.indices.reversed() {
        if res == 0 {
            if s[i] == " " {
                continue
            } else {
                res += 1
            }
        } else {
            if s[i] == " " {
                break
            } else {
                res += 1
            }
        }
    }
    return res
}
