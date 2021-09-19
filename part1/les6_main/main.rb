require_relative './hello.rb'

hi = Hello.new
hi.set_time(Time.now.strftime("%H").to_i)
puts hi.hello