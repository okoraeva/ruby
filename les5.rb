# frozen_string_literal: true

# Task 1
class User
  def setfio(fio)
    @fio = fio
  end
end

student = User.new
puts student.setfio('Кораева Ольга Георгиевна')
teacher = User.new
puts teacher.setfio('Кушнаренко Стелла Александровна')

# Task 2
class Car
  def name
    @name = 'BMW X6'
  end

  def mass
    @mass = 2130
  end

  def max_seat
    @max_seat = 5
  end

  def drive_unit
    @drive_unit = 'Полный'
  end

  def fuel_cons
    @fuel_const = 6.6
  end

  def tank_vol
    @tank_vol = 80
  end

  def engine_vol
    @engine_vol = 2993
  end
end
bmw = Car.new
puts "Название машины: #{bmw.name}"
puts "Вес машины: #{bmw.mass} кг"
puts "Максимальное количество мест: #{bmw.max_seat}"
puts "Привод: #{bmw.drive_unit}"
puts "Расход топлива на 100 км: #{bmw.fuel_cons}"
puts "Объем бака: #{bmw.tank_vol}"
puts "Объем двигателя: #{bmw.engine_vol}"

# Task 3
class Point
  def set_x(x)
    @x = x
  end

  def set_y(y)
    @y = y
  end

  def value_x
    @x
  end

  def value_y
    @y
  end

  def count_dist(dot)
    @result = Math.sqrt(((dot.value_x - @x)**2) + ((dot.value_y - @y)**2)).round(2)
  end

  attr_reader :result
end

point1 = Point.new
point1.set_x(3)
point1.set_y(6)
point2 = Point.new
point2.set_x(-1)
point2.set_y(5)
point1.count_dist(point2)
puts point1.result

# Task 4
puts $LOAD_PATH.count

# Task 5
class User
  def initialize
    @counter = 0
  end

  def current
    @counter += 1
  end
end

first = User.new
puts first.current
puts first.current
