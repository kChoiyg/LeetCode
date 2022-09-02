class Solution {
// func findDuplicate(_ nums: [Int]) -> Int {
//     var dict = [Int: Int]()
    
//     nums.forEach {
//         dict[$0, default: 0] += 1
//     }
    
//     let result = dict.filter {
//         $0.value > 1
//     }.first
// //    print(result!.key)
//     return result!.key
// }
    
func findDuplicate(_ nums: [Int]) -> Int {
guard nums.isEmpty == false else {
    return 0
}

var backup = [Int:Bool]()

for item in nums {
    if backup[item] == true {
        return item
    }
    backup[item] = true
}

return nums[0]
}
}