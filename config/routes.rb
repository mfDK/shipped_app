Rails.application.routes.draw do
  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' , as: :log_out

  resources :users
  resources :ships
# Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         home#index
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#   log_out GET    /logout(.:format)         sessions#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     ships GET    /ships(.:format)          ships#index
#           POST   /ships(.:format)          ships#create
#  new_ship GET    /ships/new(.:format)      ships#new
# edit_ship GET    /ships/:id/edit(.:format) ships#edit
#      ship GET    /ships/:id(.:format)      ships#show
#           PATCH  /ships/:id(.:format)      ships#update
#           PUT    /ships/:id(.:format)      ships#update
#           DELETE /ships/:id(.:format)      ships#destroy

end
