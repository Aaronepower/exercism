module BookKeeping
    VERSION = 2
end

class Raindrops
    @@factors = [[3, "Pling"], [5, "Plang"], [7, "Plong"]]
    def self.convert(number)
        result = ''
        @@factors.each {|factor, output| result << output if number % factor == 0}
        result << number.to_s if result.empty?
        result
    end
end
