
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
end
