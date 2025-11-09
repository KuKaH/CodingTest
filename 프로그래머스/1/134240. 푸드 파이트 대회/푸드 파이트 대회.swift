import Foundation

func solution(_ food:[Int]) -> String {
    
    var result: [Int] = []
    
    for i in 1..<food.count {
        let count = food[i] / 2
        for _ in 0..<count {
            result.append(i)
        }
    }
    
    let reverseResult = Array(result.reversed())
    
    let realResult = result + [0] + reverseResult
    
    return realResult.map { String($0) }.joined()
}