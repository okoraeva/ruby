dictionary = %w[абажур аббревиатура аберрация абзац абилитация абитуриент абитуриенты абоминация абонемент
ябеда ябедник ябедница ябедничавший ябедничающий ябеднический ябедничество ябиру яблоки яблоко яблоневый 
яблонный яблонь яблонька яблоня яблочко яблочник яблочный].sort!

def find(obj, word)
  res = obj.select { |el| el == word}
  if res.empty?
    res = obj.select { |el| el.start_with?(word[0, 2])}
    if res.empty?
      res = 'Такое слово не найдено'
    end
  end
  p res
end
find(dictionary, 'яблоко')