# Task 4
class User
  def set_fio
  	@user_fio = gets.chomp
  end
  def fio
  	@user_fio
  end
end
user_1 = User.new
user_2 = User.new
user_3 = User.new
user_1.set_fio
user_2.set_fio
user_3.set_fio
array = [user_1.fio, user_2.fio, user_3.fio]
array_1 = [user_1, user_2, user_3]
puts array
puts array_1