
class Planets
  
  def mercury
    p 1
  end
  def venus
    p 2
  end
  def earth
    p 3
  end
  def mars
    p 4
  end
  def jupiter
    p 5
  end
  def saturn
    p 6
  end
  def uranus
    p 7
  end
  def neptune
    p 8
  end

  def method_missing(m)
    raise 'NotExistingPlanetException'
    rescue => e
      p e.message
  end

end

planet = Planets.new

planet.mars
planet.plugs