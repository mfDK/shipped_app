Rails.application.routes.draw do
  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' , as: :log_out


  resources :users do
    resources :jobs
  end

  resources :ships do
  	post '/follow' => 'userfollowships#create'
  	delete '/unfollow' => 'userfollowships#destroy' , as: :unfollow
  end

end
