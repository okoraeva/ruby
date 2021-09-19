# frozen_string_literal: true

# 1ое Задание
class Ticket
  def price
    1000
  end

  def row
    4
  end

  def seat
    12
  end

  def event
    'The Pursuit of Happiness'
  end

  def date
    '12/08/2021'
  end
end

t = Ticket.new
puts "Цена билета: #{t.price}"
puts "Ряд: #{t.row}"
puts "Место: #{t.seat}"
puts "Событие: #{t.event}"
puts "Дата: #{t.date}"

# 2ое Задание

class Computer
  def year
    2008
  end

  def system
    'Windows'
  end
end

class Network
  def ip
    189_898_966
  end

  def start_page
    'Google'
  end
end

class Host
  def address
    'some address'
  end

  def payment
    1300
  end
end

# 3е Задание

class User
  def fio
    'Romanov Andrei Alexcandrovich'
  end

  def age
    23
  end

  def profession
    'soccer player'
  end
end

user = User.new
puts "User's name: #{user.fio}"
puts "User's profession: #{user.profession}"
