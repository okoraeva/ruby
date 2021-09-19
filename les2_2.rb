# Task 1 and 2
def ask
  colors = []
  say = 'Введите цвет: '
  loop do
    print say
    say = 'Введите дополнительный цвет, для выхода напишите "stop": '
    var = gets.chomp
    break if var == 'stop'
    next if var.to_i != 0
    colors.push(var)
  end
  colors
  colors.uniq.reject { |el| el == "" }.sort   
end
p ask

# Task 3 and 4
arr = %w[cat dog tiger]
p arr.select { |el| el.include? 't' }
p arr.each { |el| el.capitalize! }

# Task 5
week = %w[понедельник вторник среда четверг
пятница суббота воскресенье]
p week.select { |el| el.start_with?('с') }

# Task 6
months = %w[январь февраль март апрель май 
июнь июль август сентябрь октябрь ноябрь декабрь]
p months.max { |a, b| a.size <=> b.size }
p months.min { |a, b| a.size <=> b.size }

# Task 7
p 'Hello world!'.split(//)
