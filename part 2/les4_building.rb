class Building
  def set_name(name)
    @name = name    
  end
  def name
    @name    
  end
  def set_age(age)
    @age = age
  end
  def age
    @age
  end
  def set_color(color)
    @color = color
  end
  def color
    @color
  end
  def set_floors(floors)
    @floors = floors
  end
  def floors
    @floors
  end
  def set_parking(parking)
    @parking = parking
  end
  def parking
    @parking
  end
end
museum = Building.new
museum.set_name('National museum of arts')
museum.set_age(30)
museum.set_color('grey')
museum.set_floors(4)
museum.set_parking('yes')
p museum