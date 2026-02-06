func solution(_ s:String) -> String {
    let cnt = s.count
    let mid = s.index(s.startIndex, offsetBy: cnt / 2)
    
    if s.count % 2 == 0 {
        let prev = s.index(before: mid)
        return String(s[prev...mid])
    } else {
        return String(s[mid])
    }
}