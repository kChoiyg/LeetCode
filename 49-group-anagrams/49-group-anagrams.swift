class Solution {
struct Words {
    let asciiCode: String
    var word: [String]
}

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var wordDictionary = [String:Words]()
    strs.forEach {
        let asciiCode = Array($0)
            .map {
                String($0.asciiValue!)
            }
            .sorted(by: >)
        
        let value = asciiCode.joined(separator: "")
        if wordDictionary[value] == nil {
            wordDictionary[value] = Words(asciiCode: value, word: [$0])
        }
        else {
            wordDictionary[value]?.word.append($0)
        }
    }
    
    var result = [[String]]()
    wordDictionary.forEach {
        result.append($0.value.word)
    }
    
    return result
}
}