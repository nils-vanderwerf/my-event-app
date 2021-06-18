Rails.application.routes.draw do
  resources :rsvps
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/user/:id', to: 'users#profile', as: :user
  devise_for :views
  resources :events, only: %i[new create show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "events#index"
end
