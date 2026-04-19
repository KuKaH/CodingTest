import Foundation

func solution(_ babbling:[String]) -> Int {
    let canPro = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    for bab in babbling {
        var word = bab
        var last = ""
        
        while !word.isEmpty {
            var matched = false
            
            for sound in canPro {
                if word.hasPrefix(sound) && last != sound {
                    word.removeFirst(sound.count)
                    last = sound
                    matched = true
                    break
                }
            }
            
            if !matched {
                break
            }
        }
        if word.isEmpty {
            count += 1
        }
    }
    return count
}