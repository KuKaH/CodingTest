import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    var stack: [Int] = []
    var answer = 0
    
    for i in ingredient {
        stack.append(i)
        if stack.count >= 4 {
            let last4 = stack[stack.count-4..<stack.count]
            if Array(last4) == [1, 2, 3, 1] {
                answer += 1
                stack.removeLast(4)
            } else {
                continue
            }
        }
    }
    
    return answer
}