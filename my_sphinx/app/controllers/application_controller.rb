class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  attr_accessor :current_user
  helper_method :current_user

  private
  
	def search_records(clazz, query = '', *others)
		other_params = {:match_mode => :extended}
		other_params.merge! others.first unless others.blank?
    @keys = query
    @keys = "" if @keys == "请在此输入您要搜索内容的关键字..."
		search = Ultrasphinx::Search.new(:class_names => clazz,
    :query => @keys, :weights => other_params[:weights])
    search.excerpt
    search.results
	end

  def current_user
    nil
  end

end
