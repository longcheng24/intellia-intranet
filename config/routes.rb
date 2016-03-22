Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  devise_scope :user do
    authenticated :user do
      root to: 'intranets#index'
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
      get 'users/sign_up', to: 'users/registrations#new', as: :new_registration
    end
  end
  
  resources :feeds
  resources :articles


  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

end
