import Foundation

func solution(_ nums:[Int]) -> Int {
        
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        
        for i in 2...Int(Double(n).squareRoot()) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
    
    var answer = 0
    
    for i in 0..<nums.count - 2 {
        for j in i+1..<nums.count - 1 {
            for k in j+1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if isPrime(sum) {
                    answer += 1
                }
            }
        }
    }


    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}