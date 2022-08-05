Rails.application.routes.draw do
#users
  get "/user" => "user#index"
  get "/user" => "user#show"
  post "/user" => "user#create"
  patch "/user" => "user#update"
  delete "/user" => "user#destroy"


#pin_drops
  get "" => "pin_drop#ndex"
  get "" => "pin_drop#show"
  post "" => "pin_drop#create"
  patch "" => "pin_drop#update"
  delete "" => "pin_drop#destroy"

#locations
  get "" => "location#ndex"
  get "" => "location#show"
  post "" => "location#create"
  patch "" => "location#update"
  delete "" => "location#destroy"

#pin_drop_reactions
get "" => "pin_drop_reaction#ndex"
get "" => "pin_drop_reaction#show"
post "" => "pin_drop_reaction#create"
patch "" => "pin_drop_reaction#update"
delete "" => "pin_drop_reaction#destroy"

end
