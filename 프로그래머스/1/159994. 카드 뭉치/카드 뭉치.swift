import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var cd1 = 0
    var cd2 = 0
    
    for word in goal {
        if cd1 < cards1.count && cards1[cd1] == word {
            cd1 += 1
        } else if cd2 < cards2.count && cards2[cd2] == word {
            cd2 += 1
        } else {
            return "No"
        }
    }
    
    return "Yes"
}