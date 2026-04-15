import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var answer = 0
    var paintedUntil = 0
    
    for s in section {
        if s > paintedUntil {
            answer += 1
            paintedUntil = s + m - 1
        } 
    }
    return answer
}