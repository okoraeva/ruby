# frozen_string_literal: true

# Task 3
arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(array)
  yield array
end

walk(arr) { |el| puts el }

# Task 4
def fib(num, &block)
  i = 1
  arr = [0, 1]
  case num
  when 0
    block.call arr.first
  when 1
    block.call arr
  else
    while num > i
      arr << arr[-1] + arr[-2]
      i += 1
    end
    block.call arr
  end
end
fib(10) { |i| puts i.to_s }

# Task 5
def my_map(arr, &block)
  new_arr = []
  arr.each do |element|
    new_arr << block.call(element)
  end
  p "Исходный массив: #{arr}"
  p "Результат: #{new_arr}"
end
test = [1, 2, 3, 4, 5, 6, 7, 8, 9]
my_map(test) { |x| x * x }

# Task 6
def my_select(arr, &block)
  new_arr = []
  arr.each do |element|
    new_arr << block.call(element)
  end
  p "Исходный массив: #{arr}"
  new_arr.compact!
  p "Результат: #{new_arr}"
end

my_select(test) do |x|
  x.even? ? x : next
end

# Task 7
def my_reduce(arr, &block)
  new_arr = []
  arr.each do |element|
    new_arr << block.call(element)
  end
  p "Исходный массив: #{arr}"
  new_arr.compact!
  p "Результат: #{new_arr}"
end
my_reduce(test) do |x|
  x > 5 ? x *= x : next
end
