func solution(_ s:String) -> String {
    var result = ""
    var index = 0
    
    for i in s {
        if i == " " {
            result += " "
        index = 0
        } else {
            if (index) % 2 == 0 {
                result.append(i.uppercased())
            } else {
                result.append(i.lowercased())
            }
            index += 1
        }
        
    }
    return result
}