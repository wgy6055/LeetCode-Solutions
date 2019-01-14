import Foundation

public func maxProfit2(_ prices: [Int]) -> Int {
    var profit = 0
    
    guard prices.count > 1 else { return profit }
    
    for i in 1..<prices.count where prices[i] > prices[i-1] {
        profit += (prices[i] - prices[i-1])
    }
    return profit
}
