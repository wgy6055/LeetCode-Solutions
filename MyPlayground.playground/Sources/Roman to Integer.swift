import Foundation

/// 13. 罗马数字转整数
let map = [
    "I" : 1,
    "V" : 5,
    "X" : 10,
    "L" : 50,
    "C" : 100,
    "D" : 500,
    "M" : 1000,
    "IV" : 4,
    "IX" : 9,
    "XL" : 40,
    "XC" : 90,
    "CD" : 400,
    "CM" : 900,
]

public func romanToInt(_ s: String) -> Int {
    var result = 0
    var i = 0
    while i < s.count {
        let s1 = s.substring(with: Range.init(NSRange.init(location: i, length: 1), in: s)!)
        if i + 1 < s.count {
            let s2 = s.substring(with: Range.init(NSRange.init(location: i+1, length: 1), in: s)!)
            if map.keys.contains(s1+s2) {
                result += map[s1+s2]!
                i += 2
            } else {
                result += map[s1]!
                i += 1
            }
        } else {
            result += map[s1]!
            i += 1
        }
    }
    return result
}
