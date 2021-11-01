COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}

COLORS.each_pair do |key, val|
  define_method key do
    val
  end
end

obj = Object.new
puts obj.red
puts obj.yellow