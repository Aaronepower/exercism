enum NumberClassification {
    case Perfect, Abundant, Deficient
}


class NumberClassifier {
    var classification: NumberClassification
    
    init(number: Int) {
        var factors = [1]
        
        for factor in 2..<number {
            if number % factor == 0 {
                factors.append(factor)
            }
        }
        
        print(factors)
        
        var sum = 0
        
        for factor in factors {
            sum += factor
        }
        
        if sum == number {
            classification = .Perfect
        } else if sum > number {
            classification = .Abundant
        } else {
            classification = .Deficient
        }
    }
}