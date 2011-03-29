class DaySet
  def initialize(*days)
    @days=days
  end

#  def check
#    count=0
#    for e in @days
#      if (1..7).include? e
#        count+=1
#      end
#    end
#    if count==@days.size
#      true
#    else
#       raise ArgumentError,"Invalid data"
#    end
#  end

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
    
   
    if week_day["Mon,Tue,Wed,Thu,Fri,Sat,Sun,"]
      week_day["Mon,Tue,Wed,Thu,Fri,Sat,Sun,"]="Mon-Sun,"
    elsif week_day["Mon,Tue,Wed,Thu,Fri,Sat,"]
      week_day["Mon,Tue,Wed,Thu,Fri,Sat,"]="Mon-Sat,"
    elsif  week_day["Mon,Tue,Wed,Thu,Fri,"]
       week_day["Mon,Tue,Wed,Thu,Fri,"]="Mon-Fri,"
    elsif week_day["Mon,Tue,Wed,Thu,"]
       week_day["Mon,Tue,Wed,Thu,"]="Mon-Thu,"
    elsif week_day["Mon,Tue,Wed,"]
      week_day["Mon,Tue,Wed,"]="Mon-Wed,"
    end
    
    if week_day["Tue,Wed,Thu,Fri,Sat,Sun,"]
      week_day["Tue,Wed,Thu,Fri,Sat,Sun,"]="Tue-Sun,"
    elsif week_day["Tue,Wed,Thu,Fri,Sat,"]
      week_day["Tue,Wed,Thu,Fri,Sat,"]="Tue-Sat,"
    elsif week_day["Tue,Wed,Thu,Fri,"]
      week_day["Tue,Wed,Thu,Fri,"]="Tue-Fri,"
    elsif week_day["Tue,Wed,Thu,"]
      week_day["Tue,Wed,Thu,"]="Tue-Thu,"
    end
    
    
    if week_day["Wed,Thu,Fri,Sat,Sun,"]
      week_day["Wed,Thu,Fri,Sat,Sun,"]="Wed-Sun,"
    elsif week_day["Wed,Thu,Fri,Sat,"]
      week_day["Wed,Thu,Fri,Sat,"]="Wed-Sat,"
    elsif week_day["Wed,Thu,Fri,"]
      week_day["Wed,Thu,Fri,"]="Wed-Fri,"
    end
    
    if week_day["Thu,Fri,Sat,Sun,"]
      week_day["Thu,Fri,Sat,Sun,"]="Thu-Sun,"
    elsif week_day["Thu,Fri,Sat,"]
      week_day["Thu,Fri,Sat,"]="Thu-Sat,"
    end

    if week_day["Fri,Sat,Sun,"]
      week_day["Fri,Sat,Sun,"]="Fri-Sun,"
    end
    week_day[-1]=""
    week_day
  end
end
puts DaySet.new(1,2,3,4,5,6,7)		#=> Mon-Sun
puts DaySet.new(1,2,3,6,7)				#=> Mon-Wed, Sat, Sun
puts DaySet.new(1,3,4,5,6)				#=> Mon, Wed-Sat
puts DaySet.new(2,3,4,6,7)				#=> Tue-Thu, Sat, Sun
puts DaySet.new(1,3,4,6,7)				#=> Mon, Wed, Thu, Sat, Sun
puts DaySet.new(7)								#=> Sun
puts DaySet.new(1,7)							#=> Mon, Sun
puts DaySet.new(1,8)							#=> ArgumentError
