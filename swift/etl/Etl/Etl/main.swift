class ETL {
    
    static func transform(old: [Int: [String]]) -> [String: Int] {
        var new = [String: Int]()
        
        for (value, letters) in old {
            for letter in letters {
                new[letter.lowercaseString] = value
            }
        }
        return new
    }
}