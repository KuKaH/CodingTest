import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var countX = Array(repeating: 0, count: 10)
    
    for num in X {
        let num = Int(String(num))!
        countX[num] += 1
    }
    
    var countY = Array(repeating: 0, count: 10)
    
    for num in Y {
        let num = Int(String(num))!
        countY[num] += 1
    }
    
    var result = ""
    
    for d in stride(from: 9, through: 0, by: -1) {
        let repeatCount = min(countX[d], countY[d])
        if repeatCount > 0 {
            result += String(repeating: String(d), count: repeatCount)
        }
    }
    
    if result.isEmpty {
        return "-1"
    } else if result.first == "0" {
        return "0"   
    } else {
        return result
    }
}