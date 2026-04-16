import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var sortedScore = score.sorted(by: >)
    var result = 0
    
    for i in stride(from: m - 1, to: sortedScore.count, by: m) {
        result += sortedScore[i] * m
    }
    return result
}