func solution(_ num:Int) -> Int {
    
    var cnt: Int = 0
    var temp: Int = num
    
    while temp != 1 {
        if temp % 2 == 0 {
            temp = temp / 2
            cnt += 1
        } else {
            temp = temp * 3 + 1
            cnt += 1
        }
    }
    
    
    return cnt > 500 ? -1 : cnt
}