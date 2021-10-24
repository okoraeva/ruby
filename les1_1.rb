# frozen_string_literal: true

file_name = gets.chomp

file = File.new('hello.txt', 'w+t')
file.puts 'hello1'
file.puts 'hello2'
file.puts 'hello3'
file.puts 'hello4'
file.puts 'hello5'
file.close

count = 0

File.open(file_name) do |f|
  f.each { |_line| count += 1 }
end
random = rand(0..count)
res = File.readlines(file_name, chomp: true)
p res[random]
