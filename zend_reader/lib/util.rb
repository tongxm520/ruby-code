module Util
  def self.truncate_text(text,length=100)
    #text=strip_tags(text)
    self.truncate_u(text,length)
	end

  def self.truncate_u(text, length = 30, truncate_string = "...")
    if text
      new_text = text.split("")[0,length].join
      new_text += truncate_string if(new_text.size < text.size)
      new_text
    else
      ""
    end
  end
end
