module BookKeeping
    VERSION = 4
end

class Complement
    def self.of_dna(dna)
        rna = ''
        dna.split("").each do |char|
            case char
                when 'G' then
                    rna << 'C'
                when 'C' then
                    rna << 'G'
                when 'T' then
                    rna << 'A'
                when 'A' then
                    rna << 'U'
                else
                    return ''
            end
        end
        rna
    end
end
