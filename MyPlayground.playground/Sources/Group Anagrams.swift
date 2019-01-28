import Foundation

public func groupAnagrams(_ strs: [String]) -> [[String]] {
    var map = [String: [String]]()
    for str in strs {
        let sortedStr = String(str.sorted())
        var list = [String]()
        if let existList = map[sortedStr] {
            list = existList
        }
        list.append(str)
        map[sortedStr] = list
    }
    return [[String]](map.values)
}
