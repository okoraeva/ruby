# frozen_string_literal: true

require 'singleton'

class Single
  include Singleton
end

first = Single.instance
sec = Single.instance

puts first == sec

# new = Single.new

# m = first.dup

# n = sec.clone
