import Foundation

public class Interval {
    
    public var start: Int
    public var end: Int
    
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

public func merge(_ intervals: [Interval]) -> [Interval] {
    var res = [Interval]()
    
    let intervals = intervals.sorted {
        if $0.start != $1.start {
            return $0.start < $1.start
        } else {
            return $0.end < $1.end
        }
    }
    
    for interval in intervals {
        guard let last = res.last else {
            res.append(interval)
            continue
        }
        if last.end < interval.start {
            res.append(interval)
        } else {
            last.end = max(last.end, interval.end)
        }
    }
    
    return res
}
