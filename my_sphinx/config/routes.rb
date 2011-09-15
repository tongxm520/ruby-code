ActionController::Routing::Routes.draw do |map|

  map.resources :user_sessions  
  map.resources :users, :member => {:change_pwd => :get, :update_pwd => :put}     
  map.resources :categories

  map.resources :notes, :collection => {:classify => :get, :update_pwd => :put},
:member => {:update_cat => :post, :rate => :post, :star => :post, :unstar => :post}
  
  map.resources :courses

  map.match '/search', :controller => "website", :action => 'search'
  map.match '/login' , :controller => "user_sessions", :action => 'new'
  map.match '/logout' , :controller => "user_sessions", :action => 'destroy'
  map.match '/signup' , :controller => "users", :action => 'new'
  
  map.root :controller => "notes", :action => 'index'
end
