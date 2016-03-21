Rails.application.routes.draw do

  resources :feeds
  resources :articles


  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  devise_scope :user do
    authenticated :user do
      root to: 'intranets#index'
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
      get 'users/signup', to: 'devise/registrations#new', as: :new_registration
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

end
