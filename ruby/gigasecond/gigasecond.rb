module BookKeeping
    VERSION = 4
end

class Gigasecond
    def self.from(date)
        date + 1000000000
    end
end
