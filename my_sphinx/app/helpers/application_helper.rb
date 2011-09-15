module ApplicationHelper

  def sanitize_for(text = '')
    sanitize text, :tags => %w(a href img h3 p strong em del ol ul li link span br), :attributes => %w(href src alt style target)
  end

  def truncate_text(text, length = 100)
    text = strip_tags(text)
    truncate_u(text, length)
	end
	
	def truncate_u(text, length = 30, truncate_string = "...")
    if text
      new_text = text.split("")[0,length].join
      new_text += truncate_string if(new_text.size < text.size)
      new_text
    else
      ""
    end
  end
  
end
