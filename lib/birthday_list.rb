require 'Date'

class BirthdayList
  def initialize
    @birthday_list = []
  end

  def store(name, birthday = Date.today)
    @birthday_list << { name: name, birthday: birthday }
    return "Birthday stored!"
  end

  def display_birthdays
    birthday_string = ""
    @birthday_list.each do |birthday|
      birthday_string << "Name: #{birthday[:name]} Birthday: #{birthday[:birthday].to_s}\n "
    end
    return birthday_string
  end

  def todays_birthdays
    birthdays_today = ""
    @birthday_list.each do |birthday|
      birth_date = Date.parse birthday[:birthday]
      today = Date.today
      if birth_date.month == today.month && birth_date.day == today.day
        birthdays_today << "It's #{birthday[:name]}'s birthday today! They are #{today.year - birth_date.year} years old!"
      end
    end
    return birthdays_today
  end
end
