import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var peopleCnt: Double = Double(stages.count)
    var stagesArray: [Int] = Array(repeating: 0, count: N)
    var failureArray: [(Double, Int)] = []
    
    for i in stages {
        if i == (N + 1) {
            continue
        } else {
            stagesArray[i-1] += 1    
        }
    }
    
    for (index, stage) in stagesArray.enumerated() {
        var failureRate: Double = 0
        failureRate = Double(stage) / peopleCnt
        failureArray.append((failureRate, index + 1))
        
        peopleCnt = peopleCnt - Double(stage)
    }
    
    failureArray.sort {
        a, b in a.0 == b.0 ? a.1 < b.1 : a.0 > b.0
    }
    // return []
    return failureArray.map { $0.1 }
}