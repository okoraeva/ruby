def check
	number = ARGV.map! { |i| i.to_i }
	if number[0] == 0
	  'Это не число или 0'
	elsif number[0].odd?
	 	'Число нечётное'
	else
		'Число чётное'		
	end
end
puts check
