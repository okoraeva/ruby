class Vector
  attr_accessor :v_start, :v_end

  def initialize
    dot = Point.new(x: 3, y: 5)
      @v_start = [dot.x, dot.y]

    dot = Point.new(x: 6, y: 7)
      @v_end = [dot.x, dot.y]

  end
  class Point
    attr_accessor :x, :y

    def initialize(x:, y:)
      @x = x
      @y = y
    end
  end

  def distance
    res = Math.sqrt((v_end[0]-v_start[0])**2 + (v_end[1]-v_start[1])**2)
    res
  end
end

vector = Vector.new
p vector.distance
