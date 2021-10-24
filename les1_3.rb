# frozen_string_literal: true

file = File.new('hello1.txt', 'w+t')
file.puts 'h'
file.puts 'he'
file.puts 'hel'
file.puts 'hell'
file.puts 'hello'
file.close

arr = File.readlines('hello1.txt', chomp: true)
res = arr.minmax
puts "Самая короткая строка: #{res[0]}, символов: #{res[0].size}"
puts "Самая длинная строка: #{res[1]}, символов: #{res[1].size}"
