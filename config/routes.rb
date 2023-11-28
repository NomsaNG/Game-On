Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  resources :games, only: [:index, :show, :edit, :update, :destroy] do
    member do
      post :join, to: 'participations#create'
    end
  end

  resources :venues, only: [:index, :show] do
    resources :games, only: [:create, :update]
  end

  delete 'participations/:id', to: 'participations#destroy'

  resources :communities, only: [:new, :create, :index, :show] do
    member do
      post :membership, to: 'memberships#create'
    end
  end
end
