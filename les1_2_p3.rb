# frozen_string_literal: true

num = gets.chomp.to_i
name = gets.chomp
d = Dir.new('.')
arr = d.entries
d.close
if !arr.include?(name)
  File.open(name, 'w+') do |f|
    f.puts 'a' until f.size == num
  end
else
  puts 'Такой файл уже есть!'
end
