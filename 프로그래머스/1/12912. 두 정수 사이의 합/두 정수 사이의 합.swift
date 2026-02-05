func solution(_ a:Int, _ b:Int) -> Int64 {
    let count = Int64(abs(a - b) + 1)
    return Int64(a + b) * count / 2
}