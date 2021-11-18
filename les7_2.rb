colors = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}
rus_colors = []
eng_colors = []
rus_colors = colors.values
eng_colors = colors.keys

rus_colors.map! { |el| el.to_sym  }
eng_colors.map! { |el| el.to_s  }
p rus_colors
p eng_colors

colors.transform_values!(&:to_sym)
colors.transform_keys!(&:to_s)
reversed = colors.invert
p reversed
