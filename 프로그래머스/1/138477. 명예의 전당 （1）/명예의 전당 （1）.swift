import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
//     var podium: [Int] = []
    
//     for (index, point) in score.enumerated() {
//         if index == 0 {
//             podium.append(point)
//         }
        
//         if index <= (k - 1) {
//             if point < podium[index - 1] {
//                 podium.append(point)
//             } else {
//                 podium.append(podium[index - 1])
//             }
//         } else {
//             if point > podium[index - 1] {
//                 podium.append(point)
//             } else {
//                 podium.append(podium[index - 1])
//             }
//         }
//     }
    
    var hall: [Int] = []
    var result: [Int] = []
    
    for s in score {
        hall.append(s)
        hall.sort(by: >)
        if hall.count > k {
            hall.removeLast()
        }
        if let minScore = hall.last {
            result.append(minScore)
        }
    }
    
    return result
}