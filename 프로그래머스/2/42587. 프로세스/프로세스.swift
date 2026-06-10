import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(Int, Int)] = []
    
    for (i, j) in priorities.enumerated() {
        queue.append((i, j))
    }
    
    
    var count = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if queue.contains(where: { $0.1 > current.1} ) {
            queue.append(current)
        } else {
            count += 1
            
            if current.0 == location {
                return count
            } 
        }
    }
   
    
    return count
}