require 'date'
# Task 2
arr = []
until arr.size >= 10
  arr.push(rand(0..99).round)
end
p arr
puts "Наименьшее число в массиве: #{arr.min}"
puts "Наибольшее число в массиве: #{arr.max}"

# Task 3
surnames = %w[Иванов Петров Сидоров Алексеева
 Казанцев Антропов Анисимова Кузнецов Соловьёв Кошкина]
p surnames.sort

# Task 4
time = Date.today
wday = time.wday
t_day = time.day
case wday
when 0
  first = t_day - 6
  second = t_day
when 1
  first = t_day
  second = t_day + 6
when 2
  first = t_day - 1
  second = t_day + 5
when 3
  first = t_day - 2
  second = t_day + 4
when 4
  first = t_day - 3
  second = t_day + 3
when 5
  first = t_day - 4
  second = t_day + 2
when 6
  first = t_day - 5
  second = t_day + 1
end
time1 = Time.new(time.year, time.month, first)
time2 = Time.new(time.year, time.month, second)
puts time1.strftime("%d.%m.%y") + "-" + time2.strftime("%d.%m.%y")
