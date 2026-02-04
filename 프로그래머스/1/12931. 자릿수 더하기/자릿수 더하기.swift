import Foundation

func solution(_ n:Int) -> Int
{   
    var numberString = String(n)
    var answer:Int = 0
    
    var numberArray: [Int] = []
    
    for i in numberString {
        numberArray.append(Int(String(i))!)
    }
    
    for i in numberArray {
        answer += i
    }
    
    return answer
}