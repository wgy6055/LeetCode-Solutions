import Foundation

public func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let m = nums1.count, n = nums2.count
    
    return (findKth(nums1, nums2, (m + n + 1) / 2) + findKth(nums1, nums2, (m + n + 2) / 2)) / 2
}

fileprivate func findKth(_ nums1: [Int], _ nums2: [Int], _ index: Int) -> Double {
    let m = nums1.count, n = nums2.count
    
    guard m <= n else { return findKth(nums2, nums1, index) }
    guard m != 0 else { return Double(nums2[index - 1]) }
    guard index != 1 else { return Double(min(nums1[0], nums2[0])) }
    
    let i = min(index / 2, m), j = min(index / 2, n)
    if nums1[i - 1] < nums2[j - 1] {
        return findKth(Array(nums1[i..<m]), nums2, index - i)
    } else {
        return findKth(nums1, Array(nums2[j..<n]), index - j)
    }
}
