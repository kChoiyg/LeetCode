class Solution {
func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var dict = [Int: [Int]]()
    var result = [[Int]]()

    groupSizes.enumerated().forEach {
        dict[$0.element, default: []] += [$0.offset]
    }
    
    for (key, value) in dict {
        var groupCount = value.count / key
        
        var i = 0
        while groupCount > 0 {
            let arr = Array(value[i..<(i+key)])
            result.append(arr)
            i += key
            groupCount -= 1
        }
    }
    
    return result
}
}