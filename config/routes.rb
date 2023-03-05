Rails.application.routes.draw do
  devise_for :users
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "dashboards#landing_page"
  get "buy", to: "dashboards#buy_page"
end
