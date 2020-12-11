
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

    # def self.validate_option_input(option)
    #     #concert input to integer
    #     num_input = option.to_i
    #     # if integer == 1..4 return true
    #     if num_input < 3
    #         return true
    #     # else return false 
    #     else 
    #         return false
    #     end
    # end
end

