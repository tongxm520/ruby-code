class WebsiteController < ApplicationController

  before_filter :search_option
  
  def search
    @records = []
    @options.each do |model|
      weights = model=="Course" ? {'name' => 7.0} : {'title' => 7.0}
      @records += search_records(model, params[:search_query], :weights => weights)
    end

    respond_to do |format|
      format.js  { render :template => "/website/search"}
    end      
  end
  
  private
  
  def search_option
    @options = ["Course", "Note"]    
    @options = [params[:options]] if params[:options] != "all"
  end
   
end
