import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var temp = n
    var result = 0
    
    while temp >= a {
        result += (temp / a) * b
        temp = temp - (temp / a) * a + (temp / a) * b
    }
    
    return result
}