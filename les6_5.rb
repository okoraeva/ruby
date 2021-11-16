
res = [1, 2, 3, 4, 5].inject([]) do |arr, el|
  arr << el if el.odd?
  arr
end
 
p res
