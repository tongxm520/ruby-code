class DaySet
  def initialize(*days)
    @days=days
  end

  def to_s
    week_day=""
    days=@days.sort!
    days.each do |e|
      case e
      when 1 then week_day<<"Mon,"
      when 2 then week_day<<"Tue,"
      when 3 then week_day<<"Wed,"
      when 4 then week_day<<"Thu,"
      when 5 then week_day<<"Fri,"
      when 6 then week_day<<"Sat,"
      when 7 then week_day<<"Sun,"
      else
        raise ArgumentError,"Invalid data"
      end  
    end
    day = %w[Mon Tue Wed Thu Fri Sat Sun]
    
    7.downto(3) do |i|
      0.upto(i-3) do |j|
        week = day[(7-i)..(6-j)].join(",")+","
        if week_day[week]
          week_day[week] = "#{day[7-i]}-#{day[6-j]},"
        end
      end
    end
    
    week_day[-1]=""
    week_day
  end
end

puts DaySet.new(2,3,4,5,6)		#=> Tue-Sat
puts DaySet.new(2,3,4,5,6,7)		#=> Tue-Sun
puts DaySet.new(1,2,3,4,5,6,7)		#=> Mon-Sun

puts DaySet.new(1,3,4,5,6)				#=> Mon, Wed-Sat
puts DaySet.new(1,2,3,4,6)				#=> Mon-Thu, Sat

puts DaySet.new(1,2,3,6,7)				#=> Mon-Wed, Sat, Sun
puts DaySet.new(2,3,4,6,7)				#=> Tue-Thu, Sat, Sun
puts DaySet.new(1,3,4,6,7)				#=> Mon, Wed, Thu, Sat, Sun
puts DaySet.new(7)								#=> Sun
puts DaySet.new(1,7)							#=> Mon, Sun
puts DaySet.new(1,2,3,5,6,7)		#=> Mon-Wed, Fri-Sun
puts DaySet.new(1,8)							#=> ArgumentError




