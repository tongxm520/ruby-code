require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

class ParseRss
  attr_reader :url, :content, :rss
	
  def initialize(url)
    @url = url
  end 

  def parse_rss   		
		open(@url) do |s| @content = s.read end
    @rss = RSS::Parser.parse(@content, false)
    true
  end
	
  def channel_info
    return [] unless @rss
    channel = {}    
		channel['title'] = @rss.channel.title
		channel['link'] = @rss.channel.link
		channel['description'] = @rss.channel.description
		#channel['date'] = @rss.channel.date    
    channel
  end

  def rows
    return [] unless @rss
    rows = []
    @rss.items.each do |item|
      row = {}
		  row['title'] = item.title
		  row['link'] = item.link
		  row['description'] = item.description
		  row['date'] = item.date 
      rows.push(row)
    end
    rows
  end

  def items_count
    return 0 unless @rss
    @rss.items.size
  end

  def to_html
    return "" unless @rss
    max_description_length = 100
    channel = @rss.channel
    html = "<h4><a href='#{channel.link}'>#{channel.title}</a></h4>"
    #html << "<small>Updated on #{channel.date.strftime('%m/%d/%Y')}</small>" \
            #if (channel.date rescue false)
    html << "<p>#{channel.description}</p>"
    html << "<ol>"

    @rss.items.each_with_index do |i, index|
      html << "<li><strong><a href='#{i.link}' >#{i.title}</a></strong><br/>"
      html << "<small>#{i.date.strftime("%Y-%m-%d")}  \
#{i.date.strftime("%I:%M%p")}</small><br/>" if(i.date rescue false)

      desc_text = i.description.gsub(/<[^>]+>/,"").squeeze(" ").strip
      desc = Util.truncate_text(desc_text, max_description_length)
      html << "#{desc}"      
      html << "</li>"
    end

    html << "</ol>"
    html
  end

end


