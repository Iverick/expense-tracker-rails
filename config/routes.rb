Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :lists do
    resources :expenses
  end

  get '/categories/:id', to: 'category#show', as: 'category_search'
end
