
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
    
    def self.validate_end_menu_option(end_menu_option)
        #concert input to integer
        num_input = end_menu_option.to_i
        # if integer == 1..4 return true
        if num_input < 5
            return true
        # else return false 
        else 
            return false
        end
    end
end

