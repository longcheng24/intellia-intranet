Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  # devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'intranets#index'
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
      get 'users/signup', to: 'devise/registrations#new', as: :new_registration
    end
  end
  
end
