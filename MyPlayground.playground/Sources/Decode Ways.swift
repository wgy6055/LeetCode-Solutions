import Foundation

public func numDecodings(_ s: String) -> Int {
    let sChars = Array(s)
    var dp = [Int](repeating: 0, count: s.count + 1)
    dp[0] = 1
    
    guard s.count >= 1 else { return 0 }
    
    for i in 1...s.count {
        if String(sChars[i - 1..<i]).isValid {
            dp[i] += dp[i - 1]
        }
        if i >= 2 && String(sChars[i - 2..<i]).isValid {
            dp[i] += dp[i - 2]
        }
    }
    
    return dp[s.count]
}

extension String {
    var isValid: Bool {
        if let first = first, first == "0" { return false }
        guard let num = Int(self) else { return false }
        return num > 0 && num <= 26
    }
}
