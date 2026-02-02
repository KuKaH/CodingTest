func solution(_ dartResult:String) -> Int {
    let chars = Array(dartResult)
    var i = 0
    var scores: [Int] = []
    
    while i < chars.count {
        var num = 0
        if chars[i] == "1", i + 1 < chars.count, chars[i + 1] == "0" {
            num = 10
            i += 2
        } else {
            num = chars[i].wholeNumberValue!
            i += 1
        }
        
        let bonus = chars[i]
        i += 1
        
        if bonus == "D" {
            num = num * num
        } else if bonus == "T" {
            num = num * num * num
        }
        
        scores.append(num)
        
        if i < chars.count {
            let opt = chars[i]
            let last = scores.count - 1
            if opt == "*" {
                scores[last] *= 2
                if scores.count >= 2 {
                    scores[last - 1] *= 2
                }
                i += 1
            } else if opt == "#" {
                scores[last] *= -1
                i += 1
            }
        }
    }
    
    return scores.reduce(0, +)
}