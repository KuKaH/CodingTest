import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var p1: [Int] = [1, 2, 3, 4, 5]
    var p2: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var p3: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var scores: [Int] = [0, 0, 0]
    
    for (i, answer) in answers.enumerated() {
        if answers[i] == p1[i % p1.count] { 
            scores[0] += 1
        }
        if answers[i] == p2[i % p2.count] {
            scores[1] += 1
        } 
        
        if answers[i] == p3[i % p3.count] {
            scores[2] += 1
        }
    }

    var maxScore = scores.max()!
    var result: [Int] = []
    for (i, score) in scores.enumerated() {
        if scores[i] == maxScore {
            result.append(i+1)
        }
    } 
    
    return result
}