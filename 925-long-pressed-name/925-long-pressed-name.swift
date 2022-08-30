class Solution {
func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var name = Array(name)
    let typed = Array(typed)
    var prev = ""
    var dict = [Character: Int]()
    
    typed.enumerated().forEach {
        dict[$0.element, default: 0] += 1
    }
    
    for i in 0..<typed.count {
        let ch = typed[i]
        
        if name.first == ch {
            name.removeFirst()
            dict.updateValue(dict[ch]! - 1, forKey: ch)
        }
        
        if prev == String(ch) {
            dict.updateValue(dict[ch]! - 1, forKey: ch)
            continue
        }
        
        prev = String(typed[i])
    }
    
    return (name.count == 0) && (dict.filter { $0.value > 0 }.count == 0 ? true:false)
}
}