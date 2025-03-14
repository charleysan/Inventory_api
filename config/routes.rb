Rails.application.routes.draw do
  post '/login'=> 'sessions#create'
  resources :items
  resources :owners
  resources :stores
end
