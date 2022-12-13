Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "contact", to: "pages#contact", as: :contacts
  resources :contacts, only: [:new, :create]
end
