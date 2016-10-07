module BookKeeping
    VERSION = 2
end

class Pangram
    def self.is_pangram?(str)
        return false if str.empty?

        str = str.downcase

        ('a'..'z').each {|ch| return false if !str.include? ch}

        true
    end
end
