module BookKeeping
    VERSION = 1
end

class Grains
    def self.square(square)
        grains = 1
        return grains if square == 1

        (2..square).each {|_| grains *= 2}
        grains
    end

    def self.total
        total = 0
        (1..64).each {|i| total += self.square i }
        total
    end
end
