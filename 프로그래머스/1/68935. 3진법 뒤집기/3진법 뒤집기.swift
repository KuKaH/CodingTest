import Foundation

func solution(_ n:Int) -> Int {
    var temp = n
    var ansArray: [Int] = []
    
    // if n < 3 {
    //     return 0
    // }
    
    while temp != 0 {
        var remainder = temp % 3
        temp = temp / 3
        
        ansArray.append(remainder)
    }
    
    var answer = 0
    
    for (index, i) in ansArray.enumerated() {
        answer += Int(pow(3.0, Double(ansArray.count - 1 - index))) * i
    }

    return answer
}