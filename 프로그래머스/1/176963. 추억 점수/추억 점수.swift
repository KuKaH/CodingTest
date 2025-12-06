import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var scoreDictionary: [String: Int] = [:]
    for i in 0..<name.count {
        scoreDictionary[name[i]] = yearning[i]
    }
    
    var result: [Int] = []
    
    for people in photo {
        var totalScore = 0
        
        for person in people {
            if let score = scoreDictionary[person] {
                totalScore += score
            }
        }
        
        result.append(totalScore)
    }
    
    return result
}