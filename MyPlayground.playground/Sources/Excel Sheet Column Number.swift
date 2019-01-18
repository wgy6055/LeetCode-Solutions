import Foundation

func titleToNumber(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    
    let arr = Array(s.reversed())
    var sum: UInt32 = 0
    for i in 0..<arr.count {
        let c = arr[i]
        let num: UInt32 = UnicodeScalar(String(c))!.value - UnicodeScalar("A").value + 1
        sum += num * UInt32(pow(Double(26), Double(i)))
    }
    return Int(sum)
}
