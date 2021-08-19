# frozen_string_literal: true

# Task 1
pi = 3.1415926535
puts pi.round(2)

# Task 2
arr = %w[понедельник вторник среда четверг пятница суббота воскресенье]
print arr.cycle(1) { |element| puts element }

# Task 3
colors = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'жёлтый',
  green: 'зелёный',
  dark_blue: 'голубой',
  blue: 'синий',
  purple: 'фиолетовый'
}

puts colors

# Task 4
puts 'Hello'.reverse

# Task 5
puts ' hello world '.lstrip

# Task 6
puts 'hello world'

# Task 7
rainbow = %w[красный оранжевый жёлтый зелёный голубой синий фиолетовый]
puts rainbow[rand(rainbow.size)]

# Task 7
dot1 = {
  x: 3,
  y: 7
}

dot2 = {
  x: -1,
  y: 5
}
puts Math.sqrt(((dot2[:x] - dot1[:x])**2) + ((dot2[:y] - dot1[:y])**2)).round(2)
