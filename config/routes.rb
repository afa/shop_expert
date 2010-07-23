ActionController::Routing::Routes.draw do |map|
  map.index '/', :controller=>'main', :action=>:index
  map.login '/login', :controller=>'main', :action=>'login'
  map.namespace :admin do |adm|
   adm.index '/', :controller=>'main', :action=>'index'
   adm.login '/login', :controller=>'main', :action=>'login'
  end
end
