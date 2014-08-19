Rails.application.routes.draw do
  match('kinds', {:via => :get, :to => 'kinds#index'})
  match('kinds', {:via => :post, :to => 'kinds#create'})
  match('kinds/new', {:via => :get, :to => 'kinds#new'})
  match('kinds/:id', {:via => :get, :to => 'kinds#show'})
  match('kinds/:id/edit', {:via => :get, :to => 'kinds#edit'})
  match('kinds/:id', {:via => [:patch, :put], :to => 'kinds#update'})
  match('kinds/:id', {:via => :delete, :to => 'kinds#destroy'})
end
