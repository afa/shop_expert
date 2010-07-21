ActionController::Routing::Routes.draw do |map|
  map.index '/', :controller=>'main', :action=>:index
  map.namespace :admin do |adm|
   adm.index '/', :controller=>'main', :action=>'index'
  end
end
