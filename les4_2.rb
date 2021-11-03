class News
  include Comparable
  attr_accessor :title, :body, :date

  def initialize(title, body, date)
    @title = title
    @body = body
    @date = date
  end

  def <=>(obj)
    @date <=> obj.date
  end

end

new1 = News.new('COVID-21', 'Новая вспышка заболеваний', Time.new(2021, 11, 02))
new2 = News.new('Squid-coin', 'Новая валюта накрылась, создатели остались при деньгах', 
  Time.new(2021, 10, 29))
new3 = News.new('Black Friday', 'Близится очередная волна скидок', Time.new(2021, 10, 15))

if new1 > new2
  puts 'New1 is bigger than New2'
else
  puts 'New2 is bigger than New1'
end

if new1 < new3
  puts 'New3 is bigger than New1'
else
  puts 'New1 is bigger than New3'
end