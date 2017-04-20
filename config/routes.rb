Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :products

  resources :products
  
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :products do
     resources :reviews, only: [:show, :create, :destroy]
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
