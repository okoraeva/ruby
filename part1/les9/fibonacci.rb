def fib(num)
    return  num  if num <= 1 
    fib( num - 1 ) + fib( num - 2 )
end 
puts fib(5)

def fib_bine(num)
    sq = Math.sqrt(5)
    x = (sq + 1) / 2
    y = (sq - 1) / 2
    (((x ** num) - (y ** num)) / sq).round
end
puts fib_bine(10)