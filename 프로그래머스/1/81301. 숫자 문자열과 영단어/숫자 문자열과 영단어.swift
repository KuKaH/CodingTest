import Foundation

func solution(_ s:String) -> Int {
    let numDict: [String: String] = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
    
    var buffer = ""
    var result = ""
    
    for ch in s {
        if ch.isNumber {
            result.append(ch)
        } else{
            buffer.append(ch)
            if let digit = numDict[buffer] {
                result += digit
                buffer = ""
            }
        }
    }
    return Int(result)!
}