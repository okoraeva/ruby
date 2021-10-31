class Unit
  WORKERS = []
  
  class Employee
    attr_accessor :name, :surname, :profession

    def initialize(name, surname, profession)
      @name = name
      @surname = surname
      @profession = profession
    end
  end

  def add_worker(name, surname, profession)
    worker = Employee.new(name, surname, profession)
    WORKERS.push(worker)
  end

  def workers
    WORKERS.sort_by! { |el| el.name}.each do |el|
      puts ("#{el.name} #{el.surname}: #{el.profession}")
    end
  end

  def del_worker(name, surname, profession)
    WORKERS.reject! do |el| 
      el.name == name && el.surname == surname && el.profession == profession
    end
  end

  def edit_worker(name, surname, profession, changing, new)
    WORKERS.map do |el|
      if el.name == name && el.surname == surname && el.profession == profession
        case changing
        when 'name'
          el.name = new
        when 'surname'
          el.surname = new 
        when 'profession'
          el.surname = new       
        end
      end
    end
  end

  def workers_specific(profession)
    WORKERS.each do |el|
      if el.profession == profession
        puts "#{profession}: #{el.name} #{el.surname}"
      end
    end
  end

end

unit = Unit.new
unit.add_worker('Andrew', 'Brown', 'director')
unit.add_worker('Charlie', 'Brown', 'designer')
unit.add_worker('Fred', 'Mosk', 'back-end developer')
unit.add_worker('Ann', 'Goldberry', 'back-end developer')
unit.add_worker('Mark', 'Goldberry', 'front-end developer')
unit.add_worker('Sam', 'Hazumoto', 'front-end developer')
unit.add_worker('Jane', 'Kaz', 'tester')
unit.workers
unit.del_worker('Andrew', 'Brown', 'director')
unit.workers
unit.edit_worker('Ann', 'Goldberry', 'back-end developer', 'surname', 'Smith')
unit.workers
unit.workers_specific('tester')