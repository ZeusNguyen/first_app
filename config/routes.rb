Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "users/index"
      # http://127.0.0.1:3000/api/v1/users/index
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
