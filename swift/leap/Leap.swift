
class Year {
    var isLeapYear = false

    init(calendarYear: Int) {
        switch (calendarYear % 4, calendarYear % 100, calendarYear % 400) {
            case (0, 0, 0):
                self.isLeapYear = true
            case (0, 0, _):
                self.isLeapYear = false
            case (0, _, _):
                self.isLeapYear = true
            default:
                self.isLeapYear = false
        }
    }
}
