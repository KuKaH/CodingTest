import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result = 0
    
    for i in left...right {
        let cnt = (1...i).filter { i % $0 == 0 }.count
        if cnt % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    
    return result
    
}