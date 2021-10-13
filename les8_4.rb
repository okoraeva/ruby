# frozen_string_literal: true

class Kingdom
  CONST = 'Animals'
end

class Type < Kingdom
  CONST = 'Chordates'
end

class Klass < Type
  CONST = 'Mammals'
end

class Order < Klass
  CONST = 'Primates'
end

class Family < Order
  CONST = 'Hominids'
end

class Genus < Family
  CONST = 'People'
end

class Species < Genus
  CONST = 'Homo sapiens'
end

kingdom = Kingdom.new
type = Type.new
klass = Klass.new
order = Order.new
family = Family.new
genus = Genus.new
species = Species.new

p kingdom
p type
p klass
p order
p family
p genus
p species

p Species.ancestors
