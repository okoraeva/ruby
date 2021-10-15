# frozen_string_literal: true

# Программа оповещает пользователей о повышении цены на какой-то определенный продукт
class Shop
  attr_accessor :product, :price

  def initialize(product, price)
    @product = product
    @price = price
    @customers = []
  end

  def add(customer)
    @customers << customer if customer.product == @product
  end

  def delete(customer)
    @customers.delete(customer)
  end

  def increase_price
    @price += 50
    notify
  end

  def notify
    @customers.each { |el| puts "#{el.name}, price has grown up to #{@price}" }
  end
end

class Customer
  attr_accessor :name, :product

  def initialize(name, product)
    @name = name
    @product = product
  end
end

shop = Shop.new('apple', 50)

first = Customer.new('Ann', 'apple')
second = Customer.new('Leon', 'apple')
third = Customer.new('Jake', 'banana')

shop.add(first)
shop.add(second)
shop.add(third)
shop.increase_price
shop.delete(second)
shop.increase_price
