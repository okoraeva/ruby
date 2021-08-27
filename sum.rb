class Sum
	def set_num(array)
		@array = array
	end
	def show_arr
		@array
	end
	def sum
		a = 0
		@array.each { |i| a += i }
		a	
	end	
end
res = Sum.new
res.set_num([5, 6, 7, 9, 10])
puts res.sum