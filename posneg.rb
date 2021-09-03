def check
	x = ARGV.map! { |i| i.to_i }
	if x.first == 0
	  "Это не число или 0"
	elsif x[0].negative?
		"Число отрицательное"
  else 
    "Число положительное"
	end
end
puts check
