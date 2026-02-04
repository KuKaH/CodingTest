func solution(_ arr:[Int]) -> Double {
    
    var answer: Double = 0
    
    for n in arr {
        answer += Double(n)
    }
    
    return answer / Double(arr.count)
}