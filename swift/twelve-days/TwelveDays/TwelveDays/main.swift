enum Day: Int, CustomStringConvertible {
    case First = 1
    case Second
    case Third
    case Fourth
    case Fifth
    case Sixth
    case Seventh
    case Eighth
    case Ninth
    case Tenth
    case Eleventh
    case Twelfth
    
    var description: String {
        switch self {
        case .First:
            return "first"
        case .Second:
            return "second"
        case .Third:
            return "third"
        case .Fourth:
            return "fourth"
        case .Fifth:
            return "fifth"
        case .Sixth:
            return "sixth"
        case .Seventh:
            return "seventh"
        case .Eighth:
            return "eighth"
        case .Ninth:
            return "ninth"
        case .Tenth:
            return "tenth"
        case .Eleventh:
            return "eleventh"
        case .Twelfth:
            return "twelfth"
        }
    }
}

class TwelveDaysSong {
    static let song = ["day of Christmas my true love gave to me,",
                       "twelve Drummers Drumming,",
                       "eleven Pipers Piping,",
                       "ten Lords-a-Leaping,",
                       "nine Ladies Dancing,",
                       "eight Maids-a-Milking,",
                       "seven Swans-a-Swimming,",
                       "six Geese-a-Laying,",
                       "five Gold Rings,",
                       "four Calling Birds,",
                       "three French Hens,",
                       "two Turtle Doves,",
                       "a Partridge in a Pear Tree."
    ]
    
    static func verse(number: Int) -> String {
        var selection = "On the " + String(Day.init(rawValue: number)!) + " "
        
        if number == 1 {
            return selection + song.first! + " " + song.last! + "\n"
        }
        
        selection += song.first! + song[song.endIndex.advancedBy(-number)..<song.endIndex.advancedBy(-1)].reduce("", combine: {$0 + " " + $1})
        
        selection += " and \(song.last!)\n"
        
        return selection
    }
    
    static func verses(start: Int, _ end: Int) -> String {
        var verses = ""
        
        for i in start...end {
            verses += TwelveDaysSong.verse(i) + "\n"
        }
        
        return verses
    }
    
    static func sing() -> String {
        return TwelveDaysSong.verses(1, 12)
    }
}