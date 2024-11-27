Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:new, :show, :index, :create] do

      resources :reviews, only: [:new, :create]
      #     get :top # restaurants/top
  end
  #   member do
  #     get :chef_name # restaurants/:id/chef_name
  #   end


  #   # get restaurants/restaurant_id/reviews/new
  #   # post restaurants/restaurant_id/reviews/
  # end

  # resources :reviews, only: [:destroy]
  # # Defines the root path route ("/")
  # # root "posts#index"
end
