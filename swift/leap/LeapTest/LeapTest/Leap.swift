class Year {
    var isLeapYear = false
    
    init(calendarYear year: UInt16) {
        isLeapYear = (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
    }
}