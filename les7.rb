# Task 1
class Integer 

    def kilobytes
      self * 1024
    end

    def megabytes
      self * 1024.kilobytes
    end

    def gigabytes
      self * 1024.megabytes
    end

    def terabytes
      self * 1024.gigabytes
    end

end

puts 5.kilobytes
puts 5.megabytes
puts 5.gigabytes
puts 5.terabytes

# Task 2

class User
  attr_accessor :name, :surname, :patronymic, :email

  def initialize
    yield self
  end
  
end

user = User.new do |u|
  u.name = 'Max'
  u.surname = 'Brown'
  u.patronymic = 'Alexovich'
  u.email = 'max123.br@gmail.com'
end
p user