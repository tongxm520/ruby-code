# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'time'
class DVRManager
  def initialize
    @details_list=[]
    @count=0
  end
  def add(details)
    @details_list[@count]=details
    @count+=1
  end

  def partition
    @details_list
  end

  def record?(time)
    
  end

end
manager=DVRManager.new
manager.add("monday,08:00-13:00,channel 5")
manager.add("tuesday--wednesday,12:00-18:00,channel 6")
manager.add("2009-07-08,08:00-20:00,channel 5")
puts manager.record?(Time.parse("2009/07/07 13:00"))			#=>6
puts manager.record?(Time.parse("2009/07/08 11:00"))			#=>5
puts manager.record?(Time.parse("2009/07/08 13:00"))			#=>5
puts manager.record?(Time.parse("2009/07/08 11:00"))			#=>nil
puts Time.parse("2009/07/07 13:00")