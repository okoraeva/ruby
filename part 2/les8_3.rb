# frozen_string_literal: true

class Person

  attr_accessor :name, :surname, :patronymic

  def initialize(name:, surname:, patronymic:)
    @name = name
    @surname = surname
    @patronymic = patronymic
  end
end

class User < Person; end

class Admin < Person; end

class Moderator < Person; end

user = User.new name:'Alex', surname: 'Brown', patronymic:'-'
p user

admin = Admin.new name:'Jane', surname: 'Osbrn', patronymic:'Nixovich'
p admin

mod = Moderator.new name:'Peter', surname: 'Griffin', patronymic:'Americanovich'
p mod

class Person
  remove_method :new
end

pers = Person.new 
p pers
