func solution(_ phone_number:String) -> String {
    let suffix = String(phone_number.suffix(4))
    let starCnt = phone_number.count - 4
    let star = String(repeating: "*", count: starCnt)
    return star + suffix
}