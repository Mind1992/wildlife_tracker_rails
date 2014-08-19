Rails.application.routes.draw do
  match('kinds', {:via => :get, :to => 'kinds#index'})
  match('kinds', {:via => :post, :to => 'kinds#create'})
  match('kinds/new', {:via => :get, :to => 'kinds#new'})
  match('kinds/:id', {:via => :get, :to => 'kinds#show'})
end
