module BookKeeping
    VERSION = 2
end

NUMERALS = ['I', 'X', 'C', 'M']

class Numeric
    def to_roman
        numeral = ''
        self_s = self.to_s
        i = 0

        # Turn the number into a string, 
        # and then go through it in reverse prepending the result
        # Example: 301 => "301"
        # => ["1", "0", "3"]
        # => MMMI
        self_s.split("").reverse!.each do |ch|
            symbol = NUMERALS[i]
            for _ in 1..ch.to_i do
                numeral.prepend symbol
            end
            i += 1
        end

        # Handle specific changes.
        numeral.sub! 'IIIII', 'V'
        numeral.sub! 'IIII', 'IV'
        numeral.sub! 'VIV', 'IX'
        numeral.sub! 'XXXXX', 'L'
        numeral.sub! 'XXXX', 'XL'
        numeral.sub! 'LXL', 'XC'
        numeral.sub! 'CCCCC', 'D'
        numeral.sub! 'CCCC', 'CD'
        numeral.sub! 'DCD', 'CM'

        numeral
    end
end
