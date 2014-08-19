Rails.application.routes.draw do
  match('kinds', {:via => :get, :to => 'kinds#index'})
  match('kinds', {:via => :post, :to => 'kinds#create'})
  match('kinds/new', {:via => :get, :to => 'kinds#new'})
  match('kinds/:id', {:via => :get, :to => 'kinds#show'})
  match('kinds/:id/edit', {:via => :get, :to => 'kinds#edit'})
  match('kinds/:id', {:via => [:patch, :put], :to => 'kinds#update'})
  match('kinds/:id', {:via => :delete, :to => 'kinds#destroy'})
  match('/', {:via => :get, :to => 'kinds#index'})

  match('kinds/:kind_id/sightings', {:via => :post, :to => 'sightings#create'})
  match('kinds/:kind_id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('kinds/:kind_id/sightings/:sighting_id/edit', {:via => :get, :to => 'sightings#edit'})
  match('kinds/:kind_id/sightings/:sighting_id', {:via => [:patch, :put], :to => 'sightings#update'})
  # match('kinds/:kind_id/sightings/:sighting_id', {:via => :delete, :to => 'sightings#destroy'})

end
