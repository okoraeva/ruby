puts 'Введите строку только из русских или английских букв'
i = 0
arr = []

while i < 5
  str = gets.chomp
  if str.match(/\A[[:alpha:]]+\z/)
    arr << str
    i += 1
  else
    puts 'Неправильный ввод, можно вводить только буквы'
  end
end

new_arr = arr.sort.tally

new_arr.each_pair do |key, val|
  if val > 1 
    puts "#{key}(#{val})"
  else
    puts "#{key}"
  end
end