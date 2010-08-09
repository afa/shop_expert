ActionController::Routing::Routes.draw do |map|
  map.index '/', :controller=>'main', :action=>:index
  map.login '/login', :controller=>'main', :action=>'login'
  map.resources :question do |q|
   q.resources :answer, :member=>{:select=>:get}
  end
##  map.root :controller => 'main'
#  map.devise_for :users
##  map.resources :users do |users|
##   users.root
##  end
  map.namespace :admin do |adm|
   adm.index '/', :controller=>'main', :action=>'index'
#   adm.login '/login', :controller=>'main', :action=>'login'
   adm.resources :question do |question|
    question.resources :answer
   end
   adm.resources :body
   adm.resources :product
  end
end
