class Birthday
  attr_reader :day, :month, :year

  def initialize(birth_date)
    date = Date.parse birth_date
    @day = date.day
    @month = date.month
    @year = date.year
  end

  def display
    return "#{@day}/#{@month}/#{@year}"
  end
end
