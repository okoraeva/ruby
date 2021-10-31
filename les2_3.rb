class Integer 

    def kilobytes
      self / 1024
    end

    def megabytes
      self / (1024**2)
    end

    def gigabytes
      self / (1024**3)
    end

end

File.open(gets.chomp) do |f|
  size = f.size
  p size
  if size > 1024
    puts "#{size.kilobytes}Kb"
    puts "#{size.megabytes}Mb"
    puts "#{size.gigabytes}Gb"
  end
end
