class Solution {
func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
    var sArr = sentence.components(separatedBy: " ")
    
    for i in 0..<sArr.count {
        for j in 0..<dictionary.count {
            if sArr[i].hasPrefix(dictionary[j]) {
                sArr[i] = dictionary[j]
            }
        }
    }
    
    return sArr.joined(separator: " ")
}
}