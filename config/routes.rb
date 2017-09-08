Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :scenes, only: [:create, :index, :update, :destroy]
      resources :projects, only: [:create, :index, :show, :update]
      resources :users, only: [:create, :show]
      resources :sessions, only: [:create, :show]
      get 'sessions/current_user', to: 'sessions#show'
      post 'signup', to: 'users#create'
      post 'login', to: 'sessions#create'
    end
  end

end
