func solution(_ n:Int) -> String {
    let watermelon: String = "수박"
    if (n % 2) == 0 {
        var result = String(repeating: watermelon, count: (n/2))
        return result
    } else {
        var result = String(repeating: watermelon, count: (n/2)) + "수"
        return result 
    }
}