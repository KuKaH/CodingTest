import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var answer: [Int] = []
    
    for i in array {
        if i > height {
            answer.append(i)    
        } 
    }
    
    var result = answer.count
    return result
}