matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]

sum = 0
m = 0
matrix.each do |i| 
  sum += i[m]
  m += 1
end
p sum