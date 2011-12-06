class RssController < ApplicationController
  def index
    @html = "<h1>ITeye资讯频道</h1>"
    @feeds = Feed.all
  end

  def news
    @feeds = Feed.all
  end

  def rss_news
    @feeds = Feed.all
    @feed = Feed.find(params[:feed_id])
    rss=ParseRss.new("http://"+@feed.url)
    rss.parse_rss
    @channel = rss.channel_info
    @rows = rss.rows
    render :layout => false
  end
end
