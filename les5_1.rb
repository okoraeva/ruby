require 'singleton'

class Cube
  attr_accessor :dot_a, :dot_b, :dot_c, :dot_d, :dot_a1, :dot_b1, :dot_c1, :dot_d1, :arr

  def initialize(*arr)
    @dot_a = set_point(*arr[0..2])
    @dot_b = set_point(*arr[3..5])
    @dot_c = set_point(*arr[6..8])
    @dot_d = set_point(*arr[9..11])
    @dot_a1 = set_point(*arr[12..14])
    @dot_b1 = set_point(*arr[15..17])
    @dot_c1 = set_point(*arr[18..20])
    @dot_d1 = set_point(*arr[21..23])
    @arr = [@dot_a, @dot_b, @dot_c, @dot_d, @dot_a1, @dot_b1, @dot_c1, @dot_d1]
  end

  def set_point(x, y, z)
    dot = Point.new(x, y, z)
    point = [dot.x, dot.y, dot.z]
  end

  def coordinates(obj)
    @arr == obj.arr
  end

  def size(obj)
    (@dot_b1[2] - @dot_b[2]) == (obj.dot_b1[2] - obj.dot_b[2])
  end

  class Point
    attr_accessor :x, :y, :z

    def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
    end
  end

end

first = [1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1]
#sec = [2, 0, 0, 0, 0, 0, 0, 2, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 2, 2, 2]
#sec = [1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1]
sec = [2, 1, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2, 2, 2]

cube = Cube.new(*first)
cube1 = Cube.new(*sec)


p cube.object_id
p cube1.object_id

if cube.coordinates(cube1) || cube.size(cube1)
  cube1 = cube
end

p cube.object_id
p cube1.object_id
