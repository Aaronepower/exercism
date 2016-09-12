class DNA {
    var strand: String
    
    init?(strand: String) {
        for char in strand.characters {
            switch char {
            case "A", "C", "G", "T":
                break;
            default:
                return nil
            }
        }
        self.strand = strand
    }
    
    func count(letter: Character) -> Int {
        var count = 0
        
        for char in strand.characters {
            if char == letter {
                count += 1
            }
        }
        return count
    }
    
    func counts() -> [String: Int] {
        var counts = ["A": 0, "C": 0, "G": 0, "T": 0]
        
        for char in strand.characters {
            counts[String(char)]! += 1
        }
        
        return counts
    }
}