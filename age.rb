
class Age
  def set_user_date(date)
    @date = date
  end

  def today_date
    @today = Time.now
  end

  def check
    age = today_date.year - @date[2]
    if today_date.month < @date[1]
      puts age -= 1
    elsif today_date.month > @date[1]
      puts age
    elsif today_date.month == @date[1]
      if today_date.day >= @date[0]
        puts age -= 1
      else
        puts age
      end
    end
  end
end
bd = Age.new
bd.set_user_date([30, 8, 2000])
bd.check


# Почему не получается обратиться к сегодняшней дате через перемнную @today?
# Как можно упростить ifы, если всё звыисит от переменной age, а вынося ее отдельно, её также не видно, как и @today
#  def set_age
#    @age = today_date.year - @date[2]
#  end
