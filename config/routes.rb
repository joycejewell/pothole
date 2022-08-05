Rails.application.routes.draw do
#users
  get "/user" => "user#index"
  get "/user" => "user#show"
  post "/user" => "user#create"
  patch "/user" => "user#update"
  delete "/user" => "user#destroy"


#pin_drops
  get ""

#locations


#pin_drop_reactions


end
