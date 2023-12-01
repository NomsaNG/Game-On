Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  resources :games, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    member do
      post :join, to: 'participations#create'
    end
  end

  resources :venues, only: [:index, :show]

  resources :chatrooms, only: :show

  delete 'participations/:id', to: 'participations#destroy'

  resources :communities, only: [:new, :create, :index, :show] do
    member do
      post :membership, to: 'memberships#create'
    end
  end

  resources :users, only: [:show, :edit, :update]

  resources :communities do
    resources :leaderboards, only: [:index]
    resources :games, only: [:new, :create]
  end
end
