import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    
    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        let slice = Array(array[(i-1)...(j-1)])
        
        let sortedSlice = slice.sorted()
        
        let result = sortedSlice[k-1]
        answer.append(result)
    }

    return answer
}