import Foundation

public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = n + m - 1
    var p1 = m - 1, p2 = n - 1
    
    while p1 >= 0 && p2 >= 0 {
        if nums1[p1] > nums2[p2] {
            nums1[i] = nums1[p1]
            p1 -= 1
        } else {
            nums1[i] = nums2[p2]
            p2 -= 1
        }
        i -= 1
    }
    
    if p2 >= 0 {
        while p2 >= 0 {
            nums1[i] = nums2[p2]
            i -= 1
            p2 -= 1
        }
    }
}
