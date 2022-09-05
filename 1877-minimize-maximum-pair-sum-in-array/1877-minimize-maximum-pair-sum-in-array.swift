class Solution {
func minPairSum(_ nums: [Int]) -> Int {
    let nums = nums.sorted()
    var maxValue = Int.min
    var i = 0
    var j = nums.count-1
    
    while i < nums.count/2 {
        let tempValue = nums[i] + nums[j]
        if maxValue < tempValue {
            maxValue = max(maxValue, tempValue)
        }
        
        i += 1
        j -= 1
    }
    
    return maxValue
}
}