import Foundation

public func convert(_ s: String, _ numRows: Int) -> String {
    let length = s.count
    guard length > numRows && numRows > 1 else { return s }
    let step = 2 * (numRows - 1)
    let sArr = Array(s)
    var res = ""
    
    for i in 0..<numRows {
        let offset = step - 2 * i
        var j = i
        while j < length {
            res += String(sArr[j])
            if offset < step && offset > 0 && res.count < length && j + offset < length {
                res += String(sArr[j + offset])
            }
            j += step
        }
    }
    
    return res
}
