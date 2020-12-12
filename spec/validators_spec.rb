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

# describe 'index.rb' do
#     it 'does stuff' do
#         expect(hello()).to eq("hello world")
#     end
    
#     xit "does something else" do
    
#     end
# end