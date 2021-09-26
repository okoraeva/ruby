class Factory
  @@counter = 0
  @@teddy_count = 0
  @@ball_count = 0
  @@cubes_count = 0
  class TeddyBear 
  end
  class Ball
  end
  class Cubes
  end
  def build(sym)
    @@counter += 1
    case sym
    when :teddy_bear
      print TeddyBear.new
      @@teddy_count += 1
    when :ball 
      print Ball.new
      @@ball_count += 1
    when :cubes 
      print Cubes.new
      @@cubes_count += 1
    end
  end
  def total
    @@counter
  end
  def offers
    res = {
      :teddy_bear => @@teddy_count,
      :ball => @@ball_count,
      :cubes => @@cubes_count
    }
    res
  end
end
teddy = :teddy_bear
ball = :ball
cubes = :cubes
fac = Factory.new
p fac.build(teddy)
p fac.build(teddy)
p fac.build(ball)
p fac.build(cubes)
p "Toys made in total: #{fac.total}"
p fac.offers