import Foundation

/// 1. 两数之和
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    for i in 0...nums.count - 2 {
//        let n1 = nums[i]
//        for j in i+1...nums.count - 1 {
//            let n2 = nums[j]
//            if target == n1 + n2 {
//                return [i, j]
//            }
//        }
//    }
//    return []
//}
//
//twoSum([2, 7, 11, 15], 9)

/// 9. 回文数
//func isPalindrome(_ x: Int) -> Bool {
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
//
//isPalindrome(11)

//class Solution {
//    func isPalindrome(_ x: Int) -> Bool {
//        if x < 0 || (x % 10 == 0 && x != 0) {
//            return false
//        }
//
//        var rev = 0
//        var a = x
//        while a > rev {
//            rev = rev * 10 + a % 10
//            a /= 10
//        }
//
//        return a == rev || a == rev / 10
//    }
//}
//
//Solution.init().isPalindrome(11)

/// 13. 罗马数字转整数
//class Solution {
//    let map = [
//        "I" : 1,
//        "V" : 5,
//        "X" : 10,
//        "L" : 50,
//        "C" : 100,
//        "D" : 500,
//        "M" : 1000,
//        "IV" : 4,
//        "IX" : 9,
//        "XL" : 40,
//        "XC" : 90,
//        "CD" : 400,
//        "CM" : 900,
//        ]
//
//    func romanToInt(_ s: String) -> Int {
//        var result = 0
//        var i = 0
//        while i < s.count {
//            let s1 = s.substring(with: Range.init(NSRange.init(location: i, length: 1), in: s)!)
//            if i + 1 < s.count {
//                let s2 = s.substring(with: Range.init(NSRange.init(location: i+1, length: 1), in: s)!)
//                if map.keys.contains(s1+s2) {
//                    result += map[s1+s2]!
//                    i += 2
//                } else {
//                    result += map[s1]!
//                    i += 1
//                }
//            } else {
//                result += map[s1]!
//                i += 1
//            }
//        }
//        return result
//    }
//}
//
//Solution().romanToInt("III")

// 20. 有效的括号
class Solution {
    func isValid(_ s: String) -> Bool {
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

Solution().isValid("([)]")
