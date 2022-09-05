class Solution {
func isPrefixString(_ s: String, _ words: [String]) -> Bool {
    var prev = words[0]
    for i in 1..<words.count {
        if !(s.prefix(prev.count) == prev) {
            return false
        }
        else if s.count == prev.count {
            return true
        }
        prev += words[i]
    }
    
    return (s == prev)
}
}