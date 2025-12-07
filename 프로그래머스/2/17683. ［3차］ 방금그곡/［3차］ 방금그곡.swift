func solution(_ m:String, _ musicinfos:[String]) -> String {
    
    func timeToMinutes(_ time: String) -> Int {
        let times = time.split(separator: ":").map { Int($0)! }
        
        let hour = times[0]
        let minutes = times[1]
        
        return hour * 60 + minutes
    }
    
    func replaceSharp(_ melody: String) -> String {
        return melody.replacingOccurrences(of: "C#", with: "c").replacingOccurrences(of: "D#", with: "d").replacingOccurrences(of: "F#", with: "f").replacingOccurrences(of: "G#", with: "g").replacingOccurrences(of: "A#", with: "a").replacingOccurrences(of: "B#", with: "b")
    }
    
    func makePlayedMelody(sheet: String, playTime: Int) -> String {
        let replaced = replaceSharp(sheet)
        var result = ""
        
        for i in 0..<playTime {
            let index = replaced.index(replaced.startIndex, offsetBy: i % replaced.count)
            result.append(replaced[index])
        }
        
        return result
    }
    
    let neoMelody = replaceSharp(m)
    
    var answer = "(None)"
    var maxPlayTime = 0
    
    for info in musicinfos {
        let parts = info.split(separator: ",").map { String($0) }
        
        let startTime = parts[0]
        let endTime = parts[1]
        let title = parts[2]
        let sheet = parts[3]
        
        let playTime = timeToMinutes(endTime) - timeToMinutes(startTime)
        let playedMelody = makePlayedMelody(sheet: sheet, playTime: playTime)
        
        if playedMelody.contains(neoMelody) {
            if playTime > maxPlayTime {
                maxPlayTime = playTime
                answer = title
            }
        } 
    }
    
    return answer
}