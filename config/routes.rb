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
  get "/pin_drops" => "pin_drops#index"
  post "/pin_drops" => "pin_drops#create"
  delete "/pin_drops/:id" => "pin_drops#destroy"

#locations
  get "/locations" => "locations#index"
  post "/locations" => "locations#create"
  delete "/locations/:id" => "locations#destroy"

#pin_drop_reactions
get "/pin_drop_reactions" => "pin_drop_reactions#index"
post "/pin_drop_reactions" => "pin_drop_reactions#create"
delete "/pin_drop_reactions/:id" => "pin_drop_reactions#destroy"

end
