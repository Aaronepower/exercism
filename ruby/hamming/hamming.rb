class Hamming
    def self.compute(a, b)
        raise ArgumentError if a.length != b.length

        diff = 0
        zip = a.split("").zip b.split("")

        zip.each {|a_char, b_char| diff += 1 if (a_char != b_char)}
        diff
    end
end
