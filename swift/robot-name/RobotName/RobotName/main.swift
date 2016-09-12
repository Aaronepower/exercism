import Foundation

class Robot {
    var name : String
    static var reservedNames = [String]()
    init () {
        name = Robot.generateName()
        Robot.reservedNames.append(name)
    }
    
    func resetName() {
        
        if let index = Robot.reservedNames.indexOf(name) {
            Robot.reservedNames.removeAtIndex(index)
        }
        
        name = Robot.generateName()
    }
    
    static func generateName() -> String {
        let letters = "ABCDEFGHIJKLMOPQRSTUVWXYZ";
        var name = ""
        
        for _ in 0..<2 {
            let rand = Int(arc4random_uniform(UInt32(letters.characters.count)))
            let c = letters[letters.startIndex.advancedBy(rand)]
            name += String(c)
        }
        
        for _ in 0..<3 {
            let rand = Int(arc4random_uniform(UInt32(9)))
            name += String(rand)
        }
        
        if reservedNames.contains(name) {
            name = Robot.generateName()
        }
        
        return name
    }
}