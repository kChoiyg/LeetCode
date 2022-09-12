class Solution {
func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
    var newDeck = deck.sorted()
    var result = [Int]()
    print(newDeck)
    
    while !newDeck.isEmpty {
        if let q = result.last {
            result.removeLast()
            result.insert(q, at: 0)
        }
        
        let r = newDeck.removeLast()
        result.insert(r, at: 0)
    }
    
    return result
}
}