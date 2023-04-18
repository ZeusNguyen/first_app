Rails.application.routes.draw do
  # api_version(:module => "api/v1", :path => { :value => "v1" }) do
  #   resources :users
  # end

  # api_version(:module => "api/v2", :path => { :value => "v2" }) do
  #   resources :users
  # end
  namespace :v1 do
    resources :users
  end

  namespace :v2 do
    resources :users
  end
end
