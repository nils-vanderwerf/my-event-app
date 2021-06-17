Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :views
  resources :events, only: %i[new create show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "events#index"
end
