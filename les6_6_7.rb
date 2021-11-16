class Integer
  def to_a(num = 2)
    self.to_s(num).split('')
  end
end
p 5.to_a
p 5666.to_s(8)
p 5666.to_a(8)