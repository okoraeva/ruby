class Sum
	def set_num
		@array = gets.chomp.scan(/\w+/)
	end
	def sum
		a = 0
		@array.each { |i| a += i.to_i }
		a	
	end	
end
res = Sum.new
res.set_num
puts res.sum