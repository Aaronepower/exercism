class PhoneNumber: CustomStringConvertible {
    var number = "0000000000"
    var areaCode: String {
        let indices = number.characters.indices
        return number[indices.first!...indices[number.startIndex.advancedBy(2)]]
    }
    
    var description: String {
        let indices = number.characters.indices
        let localCode = number[indices[indices.startIndex.advancedBy(3)]...indices[indices.startIndex.advancedBy(5)]]
        let userCode = number[indices[indices.startIndex.advancedBy(6)]...indices.last!]

        return "(\(areaCode)) \(localCode)-\(userCode)"
    }
    
    init(_ number: String) {
        let filteredNumber = PhoneNumber.filterNumbers(number)
        let count = filteredNumber.characters.count
        
        if count == 10 {
            self.number = filteredNumber
        } else if count == 11 {
            if filteredNumber.characters.first! == "1" {
                let indices = filteredNumber.characters.indices
                self.number = filteredNumber[indices[indices.startIndex.advancedBy(1)]...indices.last!]
            }
        }
    }


    static func filterNumbers(number: String) -> String {
        var newNumber = ""

        for num in number.characters {
            switch num {
            case "0"..."9":
                newNumber.append(num)
            default:
                continue
            }
        }
        return newNumber
    }
}
