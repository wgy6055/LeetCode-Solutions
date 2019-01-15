import Foundation

public func isPalindrome(_ s: String) -> Bool {
    var i = 0, j = s.count - 1
    let chars = Array(s.lowercased())
    
    while i < j {
        while !chars[i].isAlphanumeric && i < j {
            i += 1
        }
        while !chars[j].isAlphanumeric && i < j {
            j -= 1
        }
        if chars[i] != chars[j] {
            return false
        } else {
            i += 1
            j -= 1
        }
    }
    
    return true
}

extension Character {
    var isAlpha: Bool {
        return (Character("a")...Character("z")).contains(self)
    }
    
    var isNumeric: Bool {
        return (Character("0")...Character("9")).contains(self)
    }
    
    var isAlphanumeric: Bool {
        return isAlpha || isNumeric
    }
}
