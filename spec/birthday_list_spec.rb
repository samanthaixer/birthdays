require 'birthday_list'
# store_birthday(name, date)
# display_birthdays
# birthday?(name)
# calculate_age

describe BirthdayList do
    it { is_expected.to respond_to(:store) }

    it 'should return "birthday stored" when store_birthday is called' do
      expect(BirthdayList.new.store("Sam", "19/03/1982")).to eq "Birthday stored!"
    end

    it 'should print a list of names and birthdays when display_birthdays is called' do
      birthday_list = BirthdayList.new
      birthday_list.store("Sam", "19/03/1982")
      expect(birthday_list.display_birthdays).to eq "Name: Sam Birthday: 19/03/1982\n "
      birthday_list.store("Riya", "14/7/1995")
      expect(birthday_list.display_birthdays).to eq "Name: Sam Birthday: 19/03/1982\n Name: Riya Birthday: 14/7/1995\n "
    end

    it { is_expected.to respond_to(:todays_birthdays) }

    it 'should return "It\'s Mary\'s birthday today! They are 33 years old!"' do
      birthday_list = BirthdayList.new
      birthday_list.store("Mary", "08/03/1986")
      expect(birthday_list.todays_birthdays).to eq "It's Mary's birthday today! They are 33 years old!"
    end
end
