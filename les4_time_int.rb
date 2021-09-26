# Task 7
class Integer
  def minutes
    num = self * 60
    num
  end
  def hours 
    num = self * 3600
    num
  end
  def days
    num = self * 86400
    num
  end
end

p 5.minutes
p 2.minutes
p 1.hours

# Task 6
class Time
  def hello
    t = Time.now
    case t.hour
    when (6..11)
      puts 'Good morning'
    when (12..17)
      puts 'Good afternoon'
    when (18..23)
      puts 'Good evening'
    when (0..5)
      puts 'Good night'
    end
  end
end

time = Time.now
time.hello