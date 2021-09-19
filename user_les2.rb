class User
  def set_name(name)
    @name = name
  end
  def name
    @name
  end
  def set_sname(sname)
    @sname = sname
  end
  def sname
    @sname
  end
  def set_patr(patronymic)
    @patr = patronymic
  end
  def patr
    @patr
  end
  def set_grade(grade)
    @grade = grade if grade >= 1 && grade <= 5
  end
  def grade
    @grade
  end
  def fio
    "#{@name} + #{@sname} + #{@patr}"
  end
end

def user(name, grade)
  student = User.new
  student.set_name(name)
  #student.set_sname(sname)
  #student.set_patr(patr)
  student.set_grade(grade)
  [student]
end

students = {
  'Иванов Иван Иванович': 5,
  'Петров Пётр Петрович': 3,
  'Сидоров Сергей Владимирович': 4,
  'Ахмедова Полина Ивановна': 5,
  'Кузнецов Пётр Алексеевич': 2,
  'Фадеева Елена Васильевна': 4,
  'Гвоздевская Диана Александровна': 5,
  'Слободяник Глеб Викторович': 3,
  'Науменко Николь Максимовна': 4,
  'Демченко Оксана Николаевна': 2
}
users = []
grades = []
filtred = []
students.each do |name, grade|
  users << user(name, grade)
  grades << grade
end
p users
common = grades.sum / grades.size.to_f
students.each do |name, grade|
  filtred << user(name, grade) if grade > common
end
p filtred
