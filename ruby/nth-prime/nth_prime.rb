module BookKeeping
    VERSION = 1
end

class Prime
    @@primes = []
    def self.nth(n)
        raise ArgumentError if n == 0

        return @@primes[n-1] if n < @@primes.length

        initial = @@primes.empty? ? 2 : @@primes.last

        initial.step do |prime|
            is_prime = true
            @@primes.each do |i|
                is_prime = false if prime % i == 0
            end
            @@primes << prime if is_prime
            return @@primes.last if @@primes.length >= n
        end
    end
end
