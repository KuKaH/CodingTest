func solution(_ strings:[String], _ n:Int) -> [String] {
    var stringDictionary: [String: Character] = [:]
    var result: [String] = []
    
    for word in strings {
        let wordArray = Array(word)
        stringDictionary[word] = wordArray[n]
    }

    var sortedDic = stringDictionary.sorted { 
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value < $1.value    
        }
    }.map {$0.key}
    return sortedDic
}