dia = (1...10).to_a
arr = []
dia.each_slice(3) do |a| 
  arr << a 
end
p arr
