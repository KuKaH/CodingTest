import Foundation

func solution(_ s:String) -> [Int] {
    
    var chars = Array(s)
    var lastIndex: [Character: Int] = [:]
    var result: [Int] = Array(repeating: -1, count: chars.count)
    
    for (index, ch) in chars.enumerated() {
        if let prev = lastIndex[ch] {
            result[index] = index - prev
        } else {
            result[index] = -1
        }
        lastIndex[ch] = index
    }
    
    return result
}