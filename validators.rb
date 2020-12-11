
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
end

def self.validate_end_menu(end_menu_option)
    option = end_menu_option.to_i
    if option == 1
        return true
    elsif option == 2 
        return true
    elsif option == 3
        return true
    else
        return false
    end
end