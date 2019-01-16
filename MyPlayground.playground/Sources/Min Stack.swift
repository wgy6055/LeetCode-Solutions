import Foundation

class MinStack {
    private var stack: [Int]
    private var minStack: [Int]
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if minStack.isEmpty {
            minStack.append(x)
        } else {
            minStack.append(min(x, minStack.last!))
        }
    }
    
    func pop() {
        stack.popLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        guard let top = stack.last else { return 0 }
        return top
    }
    
    func getMin() -> Int {
        guard let min = minStack.last else { return 0 }
        return min
    }
}
