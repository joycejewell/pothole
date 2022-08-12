Rails.application.routes.draw do
get "/users/:id" => "users#show"
get "pin_drops/:id" => "pin_drops#show"
get "locations/:id" => "locations#show"
get "pin_drop_reactions/:id" => "pin_drop_reactions#show"


  #users
  get "/users" => "user#index"
  get "/users" => "user#show"
  post "/users" => "user#create"
  patch "/users" => "user#update"
  delete "/users" => "user#destroy"

#pin_drops
  get "/pin_drops" => "pin_drop#ndex"
  get "/pin_drops" => "pin_drop#show"
  post "/pin_drops" => "pin_drop#create"
  patch "/pin_drops" => "pin_drop#update"
  delete "/pin_drops" => "pin_drop#destroy"

#locations
  get "/locations" => "location#ndex"
  get "/locations" => "location#show"
  post "/locations" => "location#create"
  patch "/locations" => "location#update"
  delete "/locations" => "location#destroy"

#pin_drop_reactions
get "/pin_drop_reactions" => "pin_drop_reaction#ndex"
get "/pin_drop_reactions" => "pin_drop_reaction#show"
post "/pin_drop_reactions" => "pin_drop_reaction#create"
patch "/pin_drop_reactions" => "pin_drop_reaction#update"
delete "/pin_drop_reactions" => "pin_drop_reaction#destroy"

end
