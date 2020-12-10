
module Validators

    def self.validate_answer_input(answer)
        # answer = answer.to_s
        if answer == "a" || answer == "A" || answer = "b" || answer = "B" || answer == "c" || answer == "C"
            return true
        end
    end
end