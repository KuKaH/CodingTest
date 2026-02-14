func solution(_ s:String, _ n:Int) -> String {
    
    let shift = n % 26
    var result: String = ""
    
    for ch in s {   
        var ascii = Int(ch.unicodeScalars.first!.value)
        
        if ch == " " {
            result.append(ch)
            continue
        }
        
        if ascii >= 65 && ascii <= 90 {
            let base = Int(UnicodeScalar("A").value)
            let newAscii = (ascii - base + shift) % 26 + base
            result.append(Character(UnicodeScalar(newAscii)!))
        } else if ascii >= 97 && ascii <= 122 {
            let base = Int(UnicodeScalar("a").value)
            let newAscii = (ascii - base + shift) % 26 + base
            result.append(Character(UnicodeScalar(newAscii)!))
        }
    }
    return result
}