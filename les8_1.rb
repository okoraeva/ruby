# frozen_string_literal: true

class Vessel
  attr_accessor :missiles, :torpedoes, :cargo_hold, :crane

  def initialize
    yield self
  end
end

class UnderWaterShip < Vessel; end

class AboveWaterShip < Vessel; end

nuclear_sub = UnderWaterShip.new do |n|
  n.torpedoes = true
  n.missiles = true
end
p nuclear_sub

dry_cargo_for_grain = AboveWaterShip.new do |n|
  n.cargo_hold = true
  n.crane = true
end
p dry_cargo_for_grain

container_ship = AboveWaterShip.new do |n|
  n.crane = true
end
p container_ship

oil_tanker = AboveWaterShip.new do |n|
  n.cargo_hold = true
end
p oil_tanker

missile_cruiser = AboveWaterShip.new do |n|
  n.missiles = true
end
p missile_cruiser

military_ship = AboveWaterShip.new do |n|
  n.missiles = true
  n.cargo_hold = true
  n.crane = true
end
p military_ship
