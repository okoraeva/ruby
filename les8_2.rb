# frozen_string_literal: true

class User
  attr_accessor :name, :surname, :patronymic, :email

  def initialize(name:, surname:, patronymic:, email:)
    @name = name
    @surname = surname
    @patronymic = patronymic
    @email = email
  end

  def say
    p "I am #{self.class}"
  end

  alias to_s say
end

class CommonUser < User; end

class ContentMaker < User; end

class Admin < User; end

class Moderator < User; end

def show_user(obj, name, surname, patronymic, email)
  var = obj.new name: name, surname: surname,
                patronymic: patronymic, email: email
  p var
  puts var.say
  puts var.to_s
end

show_user(CommonUser, 'Lena', 'Green', 'Alexeevna', 'lena@gmail.com')

show_user(ContentMaker, 'Gina', 'Blue', 'Markovna', 'gina@gmail.com')

show_user(Admin, 'Mike', 'Gloober', nil, 'mike@gmail.com')

show_user(Moderator, 'Jennifer', 'Kiss', 'Andreevna', 'jen@gmail.com')
