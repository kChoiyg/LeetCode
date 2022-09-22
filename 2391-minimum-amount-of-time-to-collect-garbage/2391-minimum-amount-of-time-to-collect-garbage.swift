class Solution {
// func garbageCollection(_ garbage: [String], _ travel: [Int]) -> Int {
//     // M:금속, P:종이, G:유리
//     var mapGarbageType = [Character: Int]()
//     var mapTravelTime = [Character: Int]()
//     var travelTime = 0
    
//     for i in 0..<garbage.count {
//         if i > 0 {
//             travelTime += travel[i - 1]
//         }
        
//         var prev = ""
//         for j in 0..<garbage[i].count {
//             let garbageType = Array(garbage[i]).sorted(by: <)[j]
//             mapGarbageType[garbageType, default: 0] += 1
            
//             if prev != String(garbageType) {
//                 mapTravelTime[garbageType, default: 0] = travelTime
//             }
//             prev = String(garbageType)
//         }
//     }
    
//     return mapGarbageType.reduce(0) { result, data -> Int in
//         var newResult = result + data.value
//         if let time = mapTravelTime[data.key] {
//             newResult += time
//         }
        
//         return newResult
//     }
// }
    
    
private func collectGarbage(_ garbage: [String], _ travel: [Int], type: Character) -> Int {
    var time = 0
    var res = 0

    for i in 0..<garbage.count {
        let n = garbage[i].filter { $0 == type }.count

        if n > 0 {
            time += n
            res = time
        }
        time += travel[i]
    }

    return res
}
func garbageCollection(_ garbage: [String], _ travel: [Int]) -> Int {
   return "MGP"
        .map { collectGarbage(garbage, travel + [0], type: $0) }
        .reduce(0, +)
}
}