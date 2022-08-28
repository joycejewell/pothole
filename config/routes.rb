Rails.application.routes.draw do

#users
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

#pin_drops
  get "/pin_drops" => "pin_drops#index"
  get "pin_drops/:id" => "pin_drops#show"
  post "/pin_drops" => "pin_drops#create"
  delete "/pin_drops/:id" => "pin_drops#destroy"

#locations
  get "/location" => "location#index"
  get "/location/:id" => "location#show"
  post "/location" => "location#create"
  delete "/location/:id" => "location#destroy"

#pin_drop_reactions
get "/pin_drop_reaction" => "pin_drop_reaction#index"
get "pin_drop_reaction/:id" => "pin_drop_reaction#show"
post "/pin_drop_reaction" => "pin_drop_reaction#create"
delete "/pin_drop_reaction/:id" => "pin_drop_reaction#destroy"

end
