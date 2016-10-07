module BookKeeping
    VERSION = 3
end

class Squares
    @range = 0

    def initialize(number)
        @range = number
    end

    def square_of_sum
        sum = 0
        (0..@range).each {|i| sum += i}
        sum**2
    end

    def sum_of_squares
        square = 0
        (0..@range).each {|i| square += i**2}
        square
    end

    def difference
        self.square_of_sum - self.sum_of_squares
    end
end
