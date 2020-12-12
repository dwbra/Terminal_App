
module Validators

    def self.validate_answer_input(answer)
        a = answer.to_s
        if a == "a"
            return true
        elsif a == "A"
            return true
        elsif a == "b"
            return true
        elsif a == "B"
            return true
        elsif a == "c"
            return true
        elsif a == "C"
            return true
        else 
            return false
        end
    end

    def self.validate_name_input(name)
        n = name.to_s
        if n.empty?
            return false
        else 
            return true
        end
    end
end

