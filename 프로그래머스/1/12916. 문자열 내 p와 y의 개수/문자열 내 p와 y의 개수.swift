import Foundation

func solution(_ s:String) -> Bool
{   
    var lowerS = s.lowercased()
    var pCnt: Int = 0
    var yCnt: Int = 0
    
    for ch in lowerS {
        if ch == "p" {
            pCnt += 1
        } else if ch == "y" {
            yCnt += 1
        }
    }
    
    if pCnt == yCnt {
        return true
    } else {
        return false
    }
}