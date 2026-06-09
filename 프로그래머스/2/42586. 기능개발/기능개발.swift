import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var days: [Int] = []
    
    for i in 0..<progresses.count {
        let remain = 100 - progresses[i]
        let day = (remain + speeds[i] - 1) / speeds[i]
        days.append(day)
    }
    
    var result: [Int] = []
    var current = days[0]
    var count = 1
    
    for i in 1..<days.count {
        if days[i] <= current {
            count += 1
        } else {
            result.append(count)
            current = days[i]
            count = 1
        }
    }
    
    result.append(count)
    
    return result
}