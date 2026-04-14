func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        let result = arr1[i] | arr2[i]
        let binary = String(result, radix: 2)
        let padded = binary.leftPadding(toLength: n)
        let mapped = padded.map { $0 == "1" ? "#" : " "}.joined()
        answer.append(mapped)
    }
    return answer
}

extension String {
        func leftPadding(toLength: Int, withPad: String = "0") -> String {
        let padCount = toLength - self.count
        if padCount > 0 {
            return String(repeating: withPad, count: padCount) + self
        }
        return self
    }
}