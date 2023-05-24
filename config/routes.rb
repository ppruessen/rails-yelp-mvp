Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #  resources :restaurants, except: %i[edit update destroy]
  resources :restaurants, only: %i[show index new create] do
    resources :reviews, only: %i[new create]
  end
end
