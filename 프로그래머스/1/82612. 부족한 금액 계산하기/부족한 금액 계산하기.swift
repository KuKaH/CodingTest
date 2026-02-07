import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    var totalPrice: Int = 0
    
    for i in 1...count {
        totalPrice += price * i
    }
    
    if totalPrice - money > 0 {
        return Int64(abs(totalPrice - money))
    } else {
        return 0
    }
    
    
//     var answer:Int64 = -1
    
//     return answer
}