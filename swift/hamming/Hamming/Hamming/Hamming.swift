class Hamming {
    
    static func compute(lhs: String, against rhs: String) -> Int? {
        
        if lhs.characters.count != rhs.characters.count {
            return nil
        }
        
        var count = 0
        for (a, b) in zip(lhs.characters, rhs.characters) {
            if a != b {
                count += 1
            }
        }
        return count
    }
}