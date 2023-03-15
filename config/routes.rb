Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :content ]
  end
  # LIST
  get 'index', to: 'restaurant#index'
  # NEW RESTAURANT
  get 'restaurant/new', to: 'restaurant#new'
  post 'create', to: 'restaurant#'
  # INFO OF ONE RESTAURANT
  get 'restaurant/:id', to: 'restaurant#show'
  # UPDATE
  get 'restaurant/:id/edit', to: 'restaurant#edit'
  patch 'restaurant/:id', to: 'restaurant#update'
  # DELETE
  delete 'restaurant/:id', to: 'restaurant#destroy'
end
