class Solution {
func findDuplicate(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    nums.forEach {
        dict[$0, default: 0] += 1
    }
    
    let result = dict.filter {
        $0.value > 1
    }.first
//    print(result!.key)
    return result!.key
}
}