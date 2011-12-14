#以下的代码放在 config/initializers 文件夹下，随便弄个文件名都可以，放在这个文件夹下，启动项目时会自动加载，这样就不用像放在 lib 文件夹中，还要手工去加载了。
#module ActionDispatch
#  class ShowExceptions
#    protected 
#   
#    def rescue_action_in_public(exception)
#      status = status_code(exception).to_s

#      template = ActionView::Base.new(["#{Rails.root}/app/views"])
#      if ["404", "422", "500"].include?(status)
#        file = "/errors/#{status}.html.erb"
#      else
#        file = "/errors/unknown.html.erb"
#      end        
#      body = template.render(:file => file)

#      render(status, body)
#    end

#  end
#end


