def convert(params)
  params.map! { |i| i * 1000}
end
p convert(ARGV.map! { |i| i.to_i})