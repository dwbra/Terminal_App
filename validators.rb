
module Validators

    def self.validate_answer_input(input)
        answer = input.to_s
        if answer == "a" || answer == "A" || answer = "b" || answer = "B" || answer == "c" || answer == "C"
            return true
        end
    end
end