class Week
  @@w = { 
    "MON" => 'monday',
    "TUE" => 'tuesday',
    "WED" => 'wednesday',
    "THR" => 'thursday',
    "FRI" => 'friday',
    "SAT" => 'saturday',
    "SUN" => 'sunday'
  }
  def each(&block)
    block.call @@w.values
  end
end

week = Week.new
week.each { |i| puts i }