import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divCount = Array(repeating: 0, count: number + 1)
    var neededIron = 0
    for i in 1...number {
        var m = i
        while m <= number {
            divCount[m] += 1
            m += i
        }
    }
    
    for i in divCount {
        if i > limit {
            neededIron += power
        } else {
            neededIron += i
        }
    }
    return neededIron
}