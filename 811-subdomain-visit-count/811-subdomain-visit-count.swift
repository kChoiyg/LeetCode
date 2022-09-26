class Solution {
// func subdomainVisits(_ cpdomains: [String]) -> [String] {
//     var dict = [String: Int]()
    
//     for cpdomain in cpdomains {
//         let split = cpdomain.components(separatedBy: " ")
//         guard let count = split.first,
//               let domains = split.last?.components(separatedBy: ".")
//         else {
//             continue
//         }
        
//         var prev = ""
//         for i in (0..<domains.count).reversed() {
//             prev = "." + domains[i] + prev
//             let newDomain = prev.suffix(prev.count - 1)
//             dict[String(newDomain), default: 0] += Int(count) ?? 0
//         }
//     }
    
//     return dict.compactMap { "\($0.value) \($0.key)" }
// }
    
    
func subdomainVisits(_ cpdomains: [String]) -> [String] {
    var dict = [String: Int]()

    for cpdomain in cpdomains {

        let split = cpdomain.components(separatedBy: " ")
        guard let count = split.first,
              let domain = split.last
        else {
            continue
        }

        var arrDomain = Array(domain)
        var dotIndex = arrDomain.firstIndex(of: ".") ?? 0

        while dotIndex > 0 {
            dict[String(arrDomain), default: 0] += Int(count) ?? 0
            dotIndex = arrDomain.firstIndex(of: ".") ?? 0
            arrDomain = Array(arrDomain[(dotIndex + 1)..<arrDomain.count])
        }
    }

    return dict.compactMap { "\($0.value) \($0.key)" }
}
}