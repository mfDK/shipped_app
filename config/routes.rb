Rails.application.routes.draw do
  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' , as: :log_out

  resources :users do
    resources :jobs
  end
  resources :ships
# Prefix Verb   URI Pattern                             Controller#Action
#    jobs_index GET    /jobs/index(.:format)                   jobs#index
#     jobs_show GET    /jobs/show(.:format)                    jobs#show
#      jobs_new GET    /jobs/new(.:format)                     jobs#new
#     jobs_edit GET    /jobs/edit(.:format)                    jobs#edit
#          root GET    /                                       home#index
#         login GET    /login(.:format)                        sessions#new
#               POST   /login(.:format)                        sessions#create
#       log_out GET    /logout(.:format)                       sessions#destroy
#     user_jobs GET    /users/:user_id/jobs(.:format)          jobs#index
#               POST   /users/:user_id/jobs(.:format)          jobs#create
#  new_user_job GET    /users/:user_id/jobs/new(.:format)      jobs#new
# edit_user_job GET    /users/:user_id/jobs/:id/edit(.:format) jobs#edit
#      user_job GET    /users/:user_id/jobs/:id(.:format)      jobs#show
#               PATCH  /users/:user_id/jobs/:id(.:format)      jobs#update
#               PUT    /users/:user_id/jobs/:id(.:format)      jobs#update
#               DELETE /users/:user_id/jobs/:id(.:format)      jobs#destroy
#         users GET    /users(.:format)                        users#index
#               POST   /users(.:format)                        users#create
#      new_user GET    /users/new(.:format)                    users#new
#     edit_user GET    /users/:id/edit(.:format)               users#edit
#          user GET    /users/:id(.:format)                    users#show
#               PATCH  /users/:id(.:format)                    users#update
#               PUT    /users/:id(.:format)                    users#update
#               DELETE /users/:id(.:format)                    users#destroy
#         ships GET    /ships(.:format)                        ships#index
#               POST   /ships(.:format)                        ships#create
#      new_ship GET    /ships/new(.:format)                    ships#new
#     edit_ship GET    /ships/:id/edit(.:format)               ships#edit
#          ship GET    /ships/:id(.:format)                    ships#show
#               PATCH  /ships/:id(.:format)                    ships#update
#               PUT    /ships/:id(.:format)                    ships#update
#               DELETE /ships/:id(.:format)                    ships#destroy

end
