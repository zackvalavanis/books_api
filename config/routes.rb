Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/books" => "books#index"
  get "/books/:id" => "books#show"
  post "/books" => "books#create"
  patch "/books/:id" => "books#update"
  delete "/books/:id" => "books#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end
