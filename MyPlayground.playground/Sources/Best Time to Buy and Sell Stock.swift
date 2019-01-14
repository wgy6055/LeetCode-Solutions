import Foundation

public func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    var res = [Int](repeating: 0, count: prices.count)
    res[0] = 0
    var minPrice = prices.first!
    var maxProfit = Int.min
    
    for i in 1..<res.count {
        res[i] = max(res[i-1], prices[i] - minPrice)
        minPrice = min(minPrice, prices[i])
        maxProfit = max(maxProfit, res[i])
    }
    
    if maxProfit < 0 {
        return 0
    }
    return maxProfit
}
