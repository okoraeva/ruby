# frozen_string_literal: true

class Context
  attr_accessor :strategy
  attr_reader :collection

  def initialize(collection:, strategy:)
    @collection = collection
    @strategy = strategy
  end

  def count(city)
    @strategy.multiply(@collection[city])
  end
end

class Strategy; end

class Meter < Strategy
  def multiply(num)
    "Расстояние в метрах равно: #{num * 1000}"
  end
end

class Centimeter < Strategy
  def multiply(num)
    "Расстояние в сантиметрах равно: #{num * 100_000}"
  end
end

class Millimeter < Strategy
  def multiply(num)
    "Расстояние в милиметрах равно: #{num * 1_000_000}"
  end
end

distance_to_msc = {
  madrid: 3437,
  tokyo: 7485,
  helsinki: 893,
  cairo: 2899
}

first = Context.new collection: distance_to_msc, strategy: Meter.new
puts first.count(:madrid)
first.strategy = Centimeter.new
puts first.count(:madrid)
