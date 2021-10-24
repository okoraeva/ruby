# frozen_string_literal: true

require 'date'

# Task 1
def week(w_day = Date.today.cweek)
  return unless block_given?

  yield w_day
end

week do |w_day|
  i = 1
  while i <= 7
    puts Date.commercial(Date.today.year, w_day, i).strftime('%d.%m.%y')
    i += 1
  end
end

# Task 2
def weekends(year = Date.today.year)
  return unless block_given?

  yield year
end

weekends do |year|
  time = Date.new(year, 1, 1)
  end_time = Date.new(year + 1, 1, 1)
  arr = (time...end_time).each_with_object([]) do |day, obj|
    obj << day.strftime('%d.%m.%y') if day.saturday? || day.sunday?
  end
  p arr
end
