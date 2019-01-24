import Foundation

fileprivate let map = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]

public func letterCombinations(_ digits: String) -> [String] {
    var combination = "", combinations = [String]()
    helper(&combinations, &combination, Array(digits), 0)
    return combinations
}

private func helper(_ combinations: inout [String], _ combination: inout String, _ digits: [Character], _ index: Int) {
    if digits.count == index {
        if combination != "" {
            combinations.append(combination)
        }
        return
    }
    let digitStr = map[Int(String(digits[index]))!]
    for char in digitStr {
        combination += String(char)
        helper(&combinations, &combination, digits, index + 1)
        combination.removeLast()
    }
}
