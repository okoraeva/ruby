planets = {
  'Меркурий': 3.3e+23,
  'Венера': 4.87e+24,
  'Земля': 5.98e+24,
  'Марс': 6.4e+23,
  'Юпитер': 1.9e+27,
  'Сатурн': 5.68e+26,
  'Уран': 8.7e+25,
  'Нептун': 1.03e+26
}
sorted_p = planets.sort_by { |_key, val| val }
planets_max = sorted_p.reverse.each_with_object({}) do |(key, val), collection|
  unless collection.length >= 3
    collection[key] = val
  end
end
planets_min = sorted_p.each_with_object({}) do |(key, val), collection|
  unless collection.length >= 3
    collection[key] = val
  end
end
puts "Три самые тяжёлые планеты: #{planets_max}"
puts "Три самые лёгкие планеты: #{planets_min}"
