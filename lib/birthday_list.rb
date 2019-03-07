require 'Date'

class BirthdayList
  def initialize
    @birthday_list = []
  end

  def store_birthday(name, birthday)
    @birthday_list << {name: name, birthday: birthday}
    return "Birthday stored!"
  end

  def display_birthdays
    birthday_string = ""
    @birthday_list.each do |birthday|
        birthday_string << "Name: #{birthday[:name]} Birthday: #{birthday[:birthday]}\n "
    end
    return birthday_string
  end

  def birthday_today?
    birthdays_today = ""
    @birthday_list.each do | birthday |
      birthday_date = Date.parse birthday[:birthday]
      if birthday_date.month == Date.today.month && birthday_date.day == Date.today.day
        birthdays_today << "It's #{birthday[:name]}'s birthday today! They are #{Date.today.year - birthday_date.year} years old!"
      end
    end
    return birthdays_today
  end
end
