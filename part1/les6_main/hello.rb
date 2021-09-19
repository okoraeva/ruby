class Hello
	def set_time(time)
		@time = time
	end
	def hello
		if (6..11).include?(@time)
			puts "Good morning!"
		else
			day
			evening
			night
		end
		
	end
	def day
		if (12..17).include?(@time)
			puts "Good afternoon!"
		end
	end
	def evening
		if (18..23).include?(@time)
			puts "Good evening!"
		end
	end
	def night
		if (0..5).include?(@time)
			puts "Good night!"
		end
	end
end

