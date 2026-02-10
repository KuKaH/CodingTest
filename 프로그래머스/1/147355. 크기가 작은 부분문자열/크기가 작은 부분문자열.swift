import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let chars = Array(t)
    var n = t.count
    var m = p.count
    let pInt = Int(p)!
    
    if n < m { return 0 }
    
    var count = 0
    
    for i in 0...(n - m) {
        let sub = String(chars[i..<(i + m)])
        if let subInt = Int(sub), subInt <= pInt {
            count += 1
        }
    }
    return count
}