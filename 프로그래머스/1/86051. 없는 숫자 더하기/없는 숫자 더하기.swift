import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sumAll: Int = 45
    let sum = numbers.reduce(0, +)
    
    return sumAll - sum
}