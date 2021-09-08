class Even
	def set_num
		@number = gets.chomp.to_i
	end
	def number
		@number
	end
	def check
		if @number.even?
			puts "Число четное"
		else 
			puts "Число нечетное"
		end
	end
end
ev = Even.new
ev.set_num
ev.check
