import Foundation

public func multiply(_ num1: String, _ num2: String) -> String {
    guard num1 != "0" && num2 != "0" else { return "0" }
    
    let num1Chars = Array(num1.reversed()), num2Chars = Array(num2.reversed())
    var res = [Int](repeating: 0, count: num1.count + num2.count)
    var finalChars = [String]()
    var carry = 0, sum = 0
    
    for (i, char1) in num1Chars.enumerated() {
        let n1 = Int(String(char1))
        for (j, char2) in num2Chars.enumerated() {
            res[i + j] += n1! * Int(String(char2))!
        }
    }
    
    for num in res {
        sum = (carry + num) % 10
        carry = (carry + num) / 10
        finalChars.insert(String(sum), at: 0)
    }
    
    while finalChars.first! == "0" && !finalChars.isEmpty {
        finalChars.removeFirst()
    }
    
    return finalChars.reduce("") { $0 + $1}
}
