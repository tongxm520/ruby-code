class ApplicationController < ActionController::Base
  protect_from_forgery
  around_filter :handle_exception

  def handle_exception   
    yield
  rescue Exception => e
    case e
    when ActiveRecord::RecordNotFound,ActionController::RoutingError, ActionController::UnknownController,ActionController::UnknownAction  
      respond_format "/errors/404.html.erb"
      return
    when ActionController::InvalidAuthenticityToken
      respond_format "/errors/422.html.erb"
      return
    when Exception,RuntimeError
      respond_format "/errors/500.html.erb"
      return
    end  
  end

  def respond_format template
    respond_to do |format|
      format.html {render :template => template, :layout => false}
      format.xml {render :template => template, :layout => false}
      format.json {render :template => template, :layout => false}
      format.rss {render :template => template, :layout => false}
    end
  end
end
