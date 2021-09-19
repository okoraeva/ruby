def colors
	number = ARGV
	case number[0].to_i
	when 1 then 'красный'
	when 2 then 'оранжевый'
	when 3 then 'желтый'
	when 4 then 'зеленый'
	when 5 then 'голубой'
	when 6 then 'синий'
	when 7 then 'фиолетовый'
	else 'nil'		
	end
end
puts colors

# Task 2
# Хотела сделать через if для разнообразия, но решила, что case всё же правильнее и красивее в данном случае
def week
	number = ARGV
	case number[0].to_i
	when 1 then 'понедельник'
	when 2 then 'вторник'
	when 3 then 'среда'
	when 4 then 'четверг'
	when 5 then 'пятница'
	when 6 then 'суббота'
	when 7 then 'воскресенье'
	else 'nil'		
	end
end
puts week