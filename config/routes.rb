Rails.application.routes.draw do
 
 resources :coffee_shops, only: [:index]
 resources :users, only: [:index,:show]
 resources :favorites, only: [:create]
 post '/login', to: 'auth#create'
#  post '/favorites', to: 'favorites#create'
 get '/profile', to: 'users#profile'
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
