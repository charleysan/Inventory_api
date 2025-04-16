Rails.application.routes.draw do
  post '/login'=> 'sessions#create'
  resources :items, only: [:index, :create, :update, :destroy] do
    resources :description, only:[:index, :show, :create, :update, :destroy]
  end
  resources :owners
  resources :stores
end
