func solution(_ a:Int, _ b:Int) -> String {
    var month: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let days: [String] = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    
    var daySum = 0
    for i in 0..<(a-1) {
        daySum += month[i]
    }
    daySum += b - 1
    
    
    return days[(0 + daySum) % 7]
}