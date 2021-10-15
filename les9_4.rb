# frozen_string_literal: true

class Pizza
  def price
    100
  end
end

class CheesePizza < Pizza
  def price
    150
  end
end

class LargePizza < Pizza
  def price
    200
  end
end

class LargeCheesePizza < Pizza
  def price
    250
  end
end

pizza = Pizza.new
p pizza.price
chpizza = CheesePizza.new
p chpizza.price
lchpizza = LargeCheesePizza.new
p lchpizza.price
