module BookKeeping
    VERSION = 1
end

class Sieve
    def initialize(max)
        @max = max
    end

    def primes
        primes = []
        return primes if @max < 2

        numbers = (2..@max).to_a

        while not numbers.empty?
            prime = numbers.shift
            primes << prime
            numbers.reject! {|i| i % prime == 0}
        end
        primes
    end
end
