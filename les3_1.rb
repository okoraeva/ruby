class Page
  attr_accessor :title, :body
end
 
class News < Page
  attr_accessor :date

  class Seo
    attr_accessor :title, :description, :keywords
  end

end
 
class About < Page
  attr_accessor :phones, :address

  class Seo
    attr_accessor :title, :description, :keywords
  end

end
 
class PhotoCatalog < Page
  attr_accessor :photos
end



about = About.new
seo = About::Seo.new
 
seo.title = 'О нас'
about.body = 'Вы сможете обнаружить нас по адресам'
about.phones = ['+7 920 4567722', '+7 920 4567733']
about.address = '191036, Санкт-Петербург, ул. Гончарная, дом 20, пом. 7Н'

p seo.title
p about.body
p about.phones.join ', '
p about.address