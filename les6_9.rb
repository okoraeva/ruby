File.open('hi.txt', 'r+') do |file|
# file.puts 'first'
# file.puts 'second'
# file.puts 'third'
# file.puts 'fourth'
# file.puts 'fifth'
arr = file.readlines(chomp: true)
arr.shuffle!
arr.each { |el| file.puts el}
p arr
end


