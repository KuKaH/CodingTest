func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var x = n
    var y = m
    
    while y != 0 {
        let r = x % y
        x = y
        y = r
    }
    
    var gcd = x
    
    var lcm = n * m / x
    
    return [gcd, lcm]
}