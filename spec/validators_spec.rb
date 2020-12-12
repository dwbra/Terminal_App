require '../validators'

describe 'Validators.validate_answer_input' do
    it 'checks if input is valid' do
        expect(Validators.validate_answer_input("a")).to eq(true)
        expect(Validators.validate_answer_input("b")).to eq(true)
        expect(Validators.validate_answer_input("c")).to eq(true)
        expect(Validators.validate_answer_input("A")).to eq(true)

        expect(Validators.validate_answer_input("A.23232")).to eq(false)
        expect(Validators.validate_answer_input("232edwef")).to eq(false)
        expect(Validators.validate_answer_input("0")).to eq(false)
    end
end

describe 'Validators.validate_name_input(@name)' do
    it 'check if any input is received' do
        expect(Validators.validate_name_input("a")).to eq(true)
        expect(Validators.validate_name_input("Daniel")).to eq(true)

        expect(Validators.validate_name_input("")).to eq(false)
    end
end