file = File.new('test.txt', 'w+t')
file.puts 'hello1'
file.puts 'hello2'
file.puts 'hello3'
file.puts 'hello4'
file.puts 'hello5'
file.puts 'hello6'
file.puts 'hello7'
file.puts 'hello8'
file.puts 'hello9'
file.puts 'hello10'
file.close
count = 0
File.open('test.txt') do |f|
  f.each { |_line| count += 1 }
end
size = File.open('test.txt') { |f| f.size}
res = File.readlines('test.txt', chomp: true)
i = 0
if size < 10
  puts 'Размер файла меньше 10 байтов, невозможно провести разбиение!'
else
  while i < count
    File.open("testX0#{i+1}.txt", 'w+') do |f|
      f.puts res[i]
    end
    i += 1
  end
end