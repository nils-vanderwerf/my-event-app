Rails.application.routes.draw do
  get '/user/:id', to: 'users#profile', as: :user

  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  
  devise_for :views
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    member do
      get 'rsvp'
      get 'cancel_rsvp'
    end
  end

  root to: "events#index"
end
