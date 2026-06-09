import Foundation

func solution(_ s:String) -> Bool
{
//     var ans:Bool = false
    
//     var stack: [Character] = []
    
//     for p in s {
//         if p == "(" {
//             stack.append(p)
//         } else {
//             if stack.isEmpty {
//                 return false
//             }
//             stack.removeLast()
//         }
//     }

//     return stack.isEmpty
    
    var count = 0
    
    for p in s.utf8 {
        if p == 40 {
            count += 1
        } else {
            if count == 0 {
                return false
            }
            
            count -= 1
        }
    }
    
    return count == 0
}