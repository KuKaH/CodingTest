import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var dApplication = 0
    var sortedD = d.sorted()
    var temp = 0
    var cnt: Int = 0
    var i = 0
    
    for i in d {
        dApplication += i
    }
    
    if dApplication < budget {
        return d.count
    } else {
        while i < d.count, temp + sortedD[i] <= budget {
            cnt += 1
            temp += sortedD[i]  
            i += 1
        }
        return cnt
    }
}