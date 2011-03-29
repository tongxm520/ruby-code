class SimpleNumber
 
  def initialize( num )
    raise unless num.is_a?(Numeric)
    @x = num
  end
 
  def add( y )
    @x + y
  end
 
  def multiply( y )
    @x * y
  end
  
  def self.split_keywords(keywords, n) 
    n = 20 if n.nil?
    len = keywords.size / n
    return [keywords] if len == 0
    arr = []
    n.times do |i|
      end_at = ((i + 1) * len - 1)
      end_at = keywords.size - 1 if i == (n - 1) 
      arr << keywords[i * len .. end_at] 
    end
    arr = arr.select{|item| !item.empty?}
    arr
  end
 
end

