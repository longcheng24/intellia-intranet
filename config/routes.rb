Rails.application.routes.draw do

  resources :feeds
  devise_for :users, controllers: { sessions: "users/sessions" }

  devise_scope :user do
    authenticated :user do
      root to: 'intranets#index'
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
    end
  end
  
end
