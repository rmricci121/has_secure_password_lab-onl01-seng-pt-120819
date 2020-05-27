Rails.application.routes.draw do
   get 'users/new'
   post 'users/create'
   get 'users/create'

  resources :sessions
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
