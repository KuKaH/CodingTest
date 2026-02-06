func solution(_ seoul:[String]) -> String {
    
    for (index, name) in seoul.enumerated() {
        if name == "Kim" {
            return "김서방은 \(index)에 있다"
        } 
    }
    return ""
}