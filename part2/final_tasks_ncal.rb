require 'date'

time = Date.today
months = %w[nil Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
days = %w[пн вт ср чт пт сб вс]
first_wday = Date.new(time.year, time.month, 1).cwday

print "   #{months[time.month]} #{time.year}"

days.each_index do |index|
  print "\n#{days[index]}"
  day = index - first_wday + 2

  while day <= (Date.civil(time.year, time.month, -1).day)
    if day <= 0
      print '   '
    else
      if day.to_s.size == 2
        print " #{day}"
      else
        print " 0#{day}"
      end
    end
    day += 7
  end
end
puts

