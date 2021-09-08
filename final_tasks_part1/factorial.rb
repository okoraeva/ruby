class Factorial
  def set_num
    @number = gets.chomp.to_i
  end
  def fac
    a = 1
    (1..@number).each { |i| a *= i }
    a
  end
end
var = Factorial.new
var.set_num
puts var.fac