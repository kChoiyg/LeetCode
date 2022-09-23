class Solution {
func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
    let products = products.sorted(by: <)
    var result = [[String]]()
    
    for i in 0..<searchWord.count {
        let word = searchWord.prefix(i + 1)
        var arrTemp = [String]()
        
        for j in 0..<products.count where arrTemp.count < 3 {
            if products[j].hasPrefix(word) {
                arrTemp.append(products[j])
            }
        }
        result.append(arrTemp)
    }
    
    return result
}
}