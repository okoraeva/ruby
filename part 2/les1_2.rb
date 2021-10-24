print 'Введите первое число для деления: '
num1 = gets.to_i
print 'Введите второе число для деления: '
num2 = gets.to_i
while num2.zero?
  print 'Введите второе число для деления отличное от 0: '
  num2 = gets.to_i
end
def del(x, y)
  if (x % y) != 0
    (x / y.to_f).round(2)
  else
    x / y
  end
end
puts del(num1, num2)
