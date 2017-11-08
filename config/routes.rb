Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :games, only: [:index, :create, :show]
      resources :users, only: [:index, :show, :create]
    end
  end
end
