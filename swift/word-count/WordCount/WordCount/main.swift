let alphaNumeric = Set(arrayLiteral: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

class WordCount {
    var words: [String]
    
    init (words: String) {
        var noPunc = ""
        
        for char in words.characters {
            switch char {
            case "a"..."z", "A"..."Z", "0"..."9", " ":
                noPunc.append(char)
            default:
                break;
            }
        }
        self.words = noPunc.characters.split(" ").map(String.init)
    }
    
    func count() -> [String: Int] {
        var count = [String: Int]()
        
        for word in self.words {
            let word = word.lowercaseString
            if let value = count[word] {
                count[word] = value + 1
            } else {
                count[word] = 1
            }
        }
        
        return count
    }
}
