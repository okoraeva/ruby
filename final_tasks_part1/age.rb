def age(day, month, year)
  user = Time.new(year, month, day)
  today = Time.now
  today.year - user.year - ((today.month > user.month || (today.month == user.month && today.day >= user.day)) ? 0 : 1)
end
date =  gets.chomp.scan(/\w+/).map! {|i| i.to_i}
puts age(*date)
