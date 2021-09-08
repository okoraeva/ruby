# Task 3
def colors
	number = ARGV
	case number[0]
	when 'красный' then 1
	when 'оранжевый' then 2
	when 'желтый' then 3
	when 'зеленый' then 4
	when 'голубой' then 5
	when 'синий' then 6
	when 'фиолетовый' then 7
	end
end
puts colors

# Task 2
def leap_year
	set_year = gets.chomp.to_i
	case 
    when (set_year % 4 == 0 && set_year % 100 != 0)
      "Год вискосный"
    when set_year % 400 == 0
      "Год вискосный"
    else
      "Год невискосный"
    end
end
puts leap_year

# Task 5
def cel2far(cel = 1)
	(cel * 33.8).round(2)
end
puts cel2far(10)

def far2cel(far = 100)
	((far - 32.0) * 5/9).round(2)
end
puts far2cel(100)
