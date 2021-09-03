def check
	num = ARGV
	if num[0].to_i.to_s  == num[0]
		"Целое число"
	elsif (("a".."z").cover? (num[0])) || (("а".."я").cover? (num[0]))
		"Строка"
	else
		"Вещественное число"
	end
end
puts check