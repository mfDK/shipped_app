Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'home/index'

  root 'home#index'
end
