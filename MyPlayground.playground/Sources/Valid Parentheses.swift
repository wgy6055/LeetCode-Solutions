import Foundation

/// 20. 有效的括号
public func isValid(_ s: String) -> Bool {
    guard !s.isEmpty else { return true }
    
    var stack = Array<Character>()
    
    for index in s.indices {
        let c = s[index]
        if "{[(".contains(c) {
            stack.append(c)
        } else {
            guard !stack.isEmpty else {
                return false
            }
            let top = stack.popLast()!
            if !top.isMatch(c) {
                return false
            }
        }
    }
    return stack.isEmpty
}

extension Character {
    public func isMatch(_ c: Character) -> Bool {
        switch self {
        case "{":
            return c == "}"
        case "[":
            return c == "]"
        case "(":
            return c == ")"
        default:
            return false
        }
    }
}
