require 'ostruct'

arr = ['', ' ----------', ' ----------', ' ----------', ' ----------', ' ----------', 
' ----------', ' ----------', ' ----------', ' ----------', ' ----------', ]

arr.each { |line| puts line}

def make_struct(type, nums)
  def get_coord(type)
    print "Введите номер ряда куда поместить #{type}: "
    row = gets.chomp.to_i
    print "Введите номер столбца куда поместить #{type}: "
    col = gets.chomp.to_i
    [row, col]
  end
  row, col = get_coord(type)
  if type == 'nuclear_sub'
    ship = OpenStruct.new missiles: rand(1..9), torpedoes: rand(1..9)
    if nums[row][col] == '-'
      nums[row][col] = 's'
    else
      p 'Здесь уже занято'
      make_struct('nuclear_sub', nums)
    end 
  elsif type == 'missile_cruiser'
    ship = OpenStruct.new missiles: rand(1..9)
    if nums[row][col] == '-'
      nums[row][col] = 'c'
    else
      p 'Здесь уже занято'
      make_struct('missile_cruiser', nums)
    end 
  elsif type == 'military_ship'
    ship = OpenStruct.new cargo_hold: rand(1..9), crane: rand(1..9)
    if nums[row][col] == '-'
      nums[row][col] = 'm'
    else
      p 'Здесь уже занято'
      make_struct('military_ship', nums)
    end 
  end
  ship
end

make_struct('nuclear_sub', arr)
arr.each { |line| puts line}
make_struct('nuclear_sub', arr)
arr.each { |line| puts line}
make_struct('nuclear_sub', arr)
arr.each { |line| puts line}
make_struct('missile_cruiser', arr)
arr.each { |line| puts line}
make_struct('missile_cruiser', arr)
arr.each { |line| puts line}
make_struct('missile_cruiser', arr)
arr.each { |line| puts line}
make_struct('military_ship', arr)
arr.each { |line| puts line}
make_struct('military_ship', arr)
arr.each { |line| puts line}
make_struct('military_ship', arr)
arr.each { |line| puts line}
