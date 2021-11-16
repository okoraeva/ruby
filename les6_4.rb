class Array

  def for
    yield self
  end

end
[1, 2, 3].for { |i| p i }