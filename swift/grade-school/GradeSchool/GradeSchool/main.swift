class GradeSchool {
    var roster: [Int: [String]]
    
    var sortedRoster: [Int: [String]] {
        let sorted = roster
        let _ = sorted.sort{ $0.0 < $1.0 }
        return sorted
    }
    
    init() {
        roster = [Int: [String]]()
    }
    
    func addStudent(name: String, grade: Int) {
        if let _ = roster[grade] {
            roster[grade]!.append(name)
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(grade: Int) -> [String] {
        if let students = roster[grade] {
            return students
        } else {
            return [String]()
        }
    }
    
    
}