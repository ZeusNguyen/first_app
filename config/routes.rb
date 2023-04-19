Rails.application.routes.draw do
  api_version(:module => "V2", :path => { :value => "v2" }) do
    resources :users
  end
  # api_version(:module => "V1", :path => { :value => "v1" }, :default => true) do
  api_version(:module => "V1", :path => { :value => "v1" }) do
    resources :users
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :users
  #   end
  #   namespace :v2 do
  #     resources :users
  #   end
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
