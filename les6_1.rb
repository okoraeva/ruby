num = gets.chomp.to_i

arr = (1..num).to_a
while arr.size < num + (num-1)
  arr << arr[-1] - 1
end
p arr