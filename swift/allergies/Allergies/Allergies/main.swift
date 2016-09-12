enum Allergy: UInt {
    case Eggs = 1
    case Peanuts = 2
    case Shellfish = 4
    case Strawberries = 8
    case Tomatoes = 16
    case Chocolate = 32
    case Pollen = 64
    case Cats = 128
}

class Allergies {
    var allergies = [Allergy]()

    init(_ score: UInt) {
        determineAllergies(score)
    }

    func determineAllergies(score: UInt) {
        let allergy: Allergy
        
        if score >= Allergy.Cats.rawValue {
            allergy = .Cats
        } else if score >= Allergy.Pollen.rawValue {
            allergy = .Pollen
        } else if score >= Allergy.Chocolate.rawValue {
            allergy = .Chocolate
        } else if score >= Allergy.Tomatoes.rawValue {
            allergy = .Tomatoes
        } else if score >= Allergy.Strawberries.rawValue {
            allergy = .Strawberries
        } else if score >= Allergy.Shellfish.rawValue {
            allergy = .Shellfish
        } else if score >= Allergy.Peanuts.rawValue {
            allergy = .Peanuts
        } else if score >= Allergy.Eggs.rawValue {
            allergy = .Eggs
        } else {
            return
        }

        
        allergies.append(allergy)
        determineAllergies(score - allergy.rawValue)
    }
    
    func hasAllergy(allergy: Allergy) -> Bool {
        return allergies.contains(allergy)
    }
    
    
}
