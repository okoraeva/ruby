class Hash
  
  def to_json
    str = {}
    self.each_pair do |key, val|
      str[key.to_s] = val # "\"#{key}\": \"#{val}\", "
    end
    str.to_s.gsub!('=>', ':')
  end

end

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}

puts COLORS.to_json

