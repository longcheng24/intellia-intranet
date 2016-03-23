Rails.application.routes.draw do

  get 'accounts/show'

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
  resources :accounts


  namespace :api do
    namespace :v1 do
      get 'json/users'
      get 'json/articles'
    end
  end

end
