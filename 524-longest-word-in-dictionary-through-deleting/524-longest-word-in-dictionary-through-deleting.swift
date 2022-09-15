class Solution {
func findLongestWord(_ s: String, _ dictionary: [String]) -> String {
    var result = [String]()
    var maxValue = Int.min

    let dictionary = dictionary.sorted(by: { (first, second) in
        first.count > second.count
    })
    
    for word in dictionary {
        let arrStr = Array(s)
        let arrWord = Array(word)
        var j = 0
        var temp = ""
        
        for i in 0..<arrStr.count {
            if j == arrWord.count {
                break
            }
            
            if arrStr[i] == arrWord[j] {
                temp += String(arrWord[j])
                j += 1
            }
        }
        
        if temp == word && maxValue <= word.count {
            result.append(word)
            maxValue = max(maxValue, word.count)
        }
    }
    
    result = result.sorted(by: <)
    
    return result.count == 0 ? "":result[0]
}
}