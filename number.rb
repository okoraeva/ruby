class Even
	def set_num(number)
		@number = number
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
ev.set_num(28)
ev.check
