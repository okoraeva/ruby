# Task 1
pi = 3.14159265358979
puts '%.2f' % pi


# Task 2
fst = 10
snd = 20
extr = fst
fst = snd
snd = extr
puts fst
puts snd

# Task 3
class Even
	def check(num)
		if (num & 1) == 1
			puts "нечетное"
	    else
	    	puts "четное"
	    end
	end
end

ev = Even.new
ev.check(56689)