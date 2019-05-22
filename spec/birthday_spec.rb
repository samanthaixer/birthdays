require 'birthday'

describe Birthday do
  describe '#initialize' do
    it 'creates a birthday when we initialize' do
      birthday = Birthday.new("19/03/1982")
      expect(birthday.day).to eq 19
    end
  end

  describe 'display' do
    it 'returns a string representation of the birthday' do
      expect(Birthday.new("19/03/1982").display).to eq "19/03/1982"
    end    
  end
end
