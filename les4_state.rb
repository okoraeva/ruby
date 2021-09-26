class State
  @@state = 'solid'
  SOLID = 'solid'
  LIQUID = 'liquid'
  GAZ = 'gaz'
  def melt
    print 'Из твёрдого в жидкое '
    @@state == 'solid' ? @@state = LIQUID : 'Wrong initial state'
  end
  def freeze
    print 'Из жидкого в твёрдое '
    @@state == 'liquid' ? @@state = SOLID : 'Wrong initial state'
  end
  def boil
    print 'Из жидкого в газообразное '
    @@state == 'liquid' ? @@state = GAZ : 'Wrong initial state'
  end
  def condense
    print 'Из газообразного в жидкое '
    @@state == 'gaz' ? @@state = LIQUID : 'Wrong initial state'
  end
  def sublime
    print 'Из твёрдого в газообразное '
    @@state == 'solid' ? @@state = GAZ : 'Wrong initial state'
  end
  def deposit
    print 'Из газообразного в твёрдое '
    @@state == 'gaz' ? @@state = SOLID : 'Wrong initial state'
  end
  def status
    print 'Текущее состояние: '
    @@state    
  end
end
m = State.new
p m.melt
p m.status
p m.freeze
p m.status
p m.sublime
p m.status
p m.condense
p m.status
p m.boil
p m.status
p m.deposit
p m.status
