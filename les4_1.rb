class User
  attr_accessor :name, :surname, :patronymic

  def initialize(name, surname, patronymic)
    @name = name
    @surname = surname
    @patronymic = patronymic
  end

end

class Group
  include Enumerable

  def initialize
    @users = [User.new('Оксана', 'Терлецкая', 'Борисовна'), User.new('Виктория', 'Исупова', 'Александровна'),
     User.new('Андрей', 'Мерзляков', 'Викторович'), User.new('Артём', 'Мармеладов', 'Олегович'),
      User.new('Дарья', 'Троицкая', 'Вадимовна')]
  end

  def each
    @users.each { |el| yield el}
  end

end

group = Group.new
group.each { |el| puts el}

