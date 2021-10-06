# Task 1
arr = %i(first second third).zip([1, 2, 3]).to_h
p arr

# Task 2
arr = %w[first second third].map { |el| el.to_sym}.zip(['Fst (1)', 'Snd (2)', 'Trd (3)']).to_h
p arr

# Task 3
text = %w[возьмите текст этого задания и извлеките из него все слова количество символов в которых больше 5
подсчитайте количество слов и выведите их алфавитном порядке]
edit_text = text.select { |word| word.size > 5}
p 'Количество слов: ' + edit_text.count.to_s
p edit_text.sort

# Task 4
text = %w[Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа 'и'
Сформируйте из них список уникальных слов и выведите их в порядке увеличения количества символов в слове]
new_text = text.select { |word| word.start_with?('и', 'И') }
p new_text.uniq.sort_by(&:size)

# Task 5
eng = %w[red orange yellow green blue indigo violet]
rus = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
mixed_lang = eng.map { |el| el.to_sym}.zip(rus)
p mixed_lang.to_h

# Task 6
p 100.to_s(2)
p 100.to_s(8)
p 100.to_s(16)