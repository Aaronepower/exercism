module BookKeeping
    VERSION = 2
end

class Robot
    @@existing_names = []
    @name = ''
    
    def initialize
        self.gen_name
    end

    def reset
        @@existing_names.delete @name
        self.gen_name
    end

    def gen_name
        name = ''
        name << ('AA'..'ZZ').to_a.sample
        name << Random.rand(100..999).to_s

        if @@existing_names.include? name
            self.gen_name
        else
            @@existing_names << name
            @name = name
        end
    end
    
    def name
        @name
    end
end
