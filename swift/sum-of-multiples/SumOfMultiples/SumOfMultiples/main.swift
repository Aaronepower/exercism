class SumOfMultiples {
    
    static func toLimit(limit: UInt, inMultiples multiples: [UInt]) -> UInt {
        var sum = [UInt]()
        
        for multiple in multiples {
            if multiple > limit {
                continue
            }
            
            for i in 0..<limit {
                let newMultiple = multiple * i
                
                if newMultiple >= limit {
                    break
                } else {
                    if !sum.contains(newMultiple) {
                        sum.append(newMultiple)
                    }
                }
            }
        }
        
        return sum.reduce(UInt(0), combine: { $0 + $1 })
        
    }
}
