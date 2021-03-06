Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", confirmations: "users/confirmations", passwords:"users/passwords" }

  devise_scope :user do
    authenticated :user do
      root to: 'software#index'
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
      get 'users/sign_up', to: 'users/registrations#new', as: :new_registration
    end
  end

  # resources :users
  resources :users, only: [:show, :edit, :update, :index]

  resources :feeds
  resources :articles
  resources :calendars
  post '/calendars/:id' => 'calendars#update'



  get '/tweets/', to: 'tweets#show'

  resources :software

  namespace :api do
    namespace :v1 do
      get 'json/users'
      get 'json/articles'
    end
  end

end
