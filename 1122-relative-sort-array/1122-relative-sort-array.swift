class Solution {
func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var dict = [Int: Int]()
    let arr1 = arr1.sorted()
    var newArr1 = [Int]()
    
    arr2.enumerated().forEach {
        dict[$0.element, default: 0] = $0.offset
    }
    
    for data in arr1 where dict[data] == nil {
        newArr1.append(data)
    }
    
    var maxOffset = dict.count
    newArr1.enumerated().forEach {
        dict[$0.element, default: 0] = maxOffset
        maxOffset += 1
    }
    
    return arr1.sorted { (first, second) in
        return dict[first]! < dict[second]!
    }
}
}