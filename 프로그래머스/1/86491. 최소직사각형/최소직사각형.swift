import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxW = 0
    var maxH = 0
    
    for card in sizes {
        let w = card[0]
        let h = card[1]
        
        let big = max(w, h)
        let small = min(w, h)
        
        maxW = max(maxW, big)
        maxH = max(maxH, small)
    }
    return maxW * maxH
}