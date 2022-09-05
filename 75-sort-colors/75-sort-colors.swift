class Solution {
func sortColors(_ nums: inout [Int]) {
    for i in 0..<nums.count {
        for j in i..<nums.count where i != j {
            if nums[i] > nums[j] {
                let temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
        }
    }
}
}