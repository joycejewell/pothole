Rails.application.routes.draw do
get "/users/:id" => "users#show"
get "pin_drops/:id" => "pin_drops#show"
get "locations/:id" => "locations#show"
get "pin_drop_reactions/:id" => "pin_drop_reactions#show"

#users
  get "/users" => "users#index"
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

#pin_drops
  get "/pin_drops" => "pin_drops#ndex"
  post "/pin_drops" => "pin_drops#create"
  patch "/pin_drops/:id" => "pin_drops#update"
  delete "/pin_drops/:id" => "pin_drops#destroy"

#locations
  get "/locations" => "location#ndex"
  post "/locations" => "location#create"
  patch "/locations/:id" => "location#update"
  delete "/locations/:id" => "location#destroy"

#pin_drop_reactions
get "/pin_drop_reactions" => "pin_drop_reaction#ndex"
post "/pin_drop_reactions" => "pin_drop_reaction#create"
delete "/pin_drop_reactions/:id" => "pin_drop_reaction#destroy"

end
