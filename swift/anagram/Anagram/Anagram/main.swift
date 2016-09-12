class Anagram {
    var word: String
    var chars: [String] {
        return word.lowercaseString.characters.sort().map {String($0)}
    }
    
    init(word: String) {
        self.word = word
    }
    
    func match(list: [String]) -> [String] {
        var matching = [String]()
        
        for word in list {
            if self.word.lowercaseString == word.lowercaseString {
                continue
            }
            
            let sorted = word.lowercaseString.characters.sort().map {String($0)}
            
            if sorted == chars {
                matching.append(word)
            }
        }
        return matching
    }
}