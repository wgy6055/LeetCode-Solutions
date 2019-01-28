import Foundation

public func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var res = [Int]()
    
    guard matrix.count != 0 else { return res }
    
    var startX = 0, endX = matrix.count - 1
    var startY = 0, endY = matrix.first!.count - 1
    
    while true {
        for i in startY...endY {
            res.append(matrix[startX][i])
        }
        startX += 1
        if startX > endX {
            break
        }
        
        for i in startX...endX {
            res.append(matrix[i][endY])
        }
        endY -= 1
        if startY > endY {
            break
        }
        
        for i in (startY...endY).reversed() {
            res.append(matrix[endX][i])
        }
        endX -= 1
        if startX > endX {
            break
        }
        
        for i in (startX...endX).reversed() {
            res.append(matrix[i][startY])
        }
        startY += 1
        if startY > endY {
            break
        }
    }
    
    return res
}
