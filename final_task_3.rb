path = File.join('.')
ent = Dir.new(path).entries.reject { |x| %w[. ..].include? x }

counter = 0
ent.each do |el|
  counter += 1 if File.extname(el) == '.rb'
end
p counter