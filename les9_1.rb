class User
  attr_accessor :name, :surname, :patronymic, :email

  def initialize(name, surname, patronymic, email)
    raise 'UserException' if !name.match?(/^[А-Яа-я]+$/) || 
    !email.match?(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    rescue RuntimeError => e
      puts e.message
    @name = name
    @surname = surname
    @patronymic = patronymic
    @email = email
  end
end

user = User.new('Ольга', 'Кораева', 'Георигиевна', 'kor.olya@gmail.com')
p user
