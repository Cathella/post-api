Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      post :auth, to: "authentication#create"
      
      resources :posts do
        resources :comments
      end
    end
  end
end
