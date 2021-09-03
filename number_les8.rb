def number
	num = ARGV
	if num.map { |i| i.to_i.to_s } == num
		num.map! { |i| i.to_i}
		puts 	"Все числа целые, самое большое: #{num.max}" if num.all? { |i| i.integer? }
	else 
		'Что-то не подходит'
	end
end
puts number
