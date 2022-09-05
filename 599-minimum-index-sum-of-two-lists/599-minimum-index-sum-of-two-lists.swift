class Solution {
func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var dict = [Int: [String]]()
    var minValue = Int.max
    
    for (index, word) in list1.enumerated() {
        if list2.contains(word), let i = list2.firstIndex(of: word) {
            let sumIndex = (index + i)
            dict[sumIndex, default: []] += [word]
            minValue = min(minValue, sumIndex)
        }
    }
    
    guard let result = dict[minValue] else {
        return [""]
    }
    return result
}
}