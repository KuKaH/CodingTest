import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let lostSet = Set(lost)
    let reserveSet = Set(reserve)
    
    let realLost = lostSet.subtracting(reserveSet)
    let realReserve = reserveSet.subtracting(lostSet)
    
    var lostArr = Array(realLost).sorted()
    var reserveArr = Array(realReserve).sorted()
    
    var borrowed = 0
    
    for x in lostArr {
        if let idx = reserveArr.firstIndex(of: x - 1) {
            reserveArr.remove(at: idx)
            borrowed += 1
        } else if let idx = reserveArr.firstIndex(of: x + 1) {
            reserveArr.remove(at: idx)
            borrowed += 1
        }
    }
    
    
    
    return n - (lostArr.count - borrowed)
}