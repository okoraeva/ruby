# frozen_string_literal: true

# Task 1
class Hello
  def initialize(param)
    @param = param
  end

  def say
    puts "Hello, #{@param}!"
  end
end
hello = Hello.new('world')
hello.say

# Task 2
class User
  attr_accessor :name, :surname, :patronymic
end

user = User.new
user.name = 'Alex'
user.surname = 'Brown'
user.patronymic = 'Alexovich'
user1 = User.new
user1.name = 'Sam'
user1.surname = 'Green'
user1.patronymic = 'Greenovich'

# Task 3
class Group
  attr_reader :objects

  def initialize(*params)
    @objects = params
  end

  def each(&block)
    @objects.each(&block)
  end
end

group = Group.new(user, user1)
group.each do |i|
  puts "#{i.name} #{i.surname} #{i.patronymic}"
end

# Task 4
class Foo
  def initialize(hash)
    @hash = hash
  end

  def method_missing(name)
    @hash[name]
  end
end

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

foo = Foo.new(COLORS)
puts foo.blue
puts foo.red

# Task 5
class List
  def initialize(*params)
    @params = params
  end

  def each(&block)
    @params.each(&block)
  end
end

list = List.new(4, 'king', [1, 5, 'raw'], 'queen', :sym)
list.each { |i| puts i }
