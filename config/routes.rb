Rails.application.routes.draw do
  resources :comments
  get '/user/:id', to: 'users#profile', as: :user

  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    resources :comments
    member do
      get 'rsvp'
      get 'cancel_rsvp'
      delete 'cancel_rsvp'
    end
  end


resources :events do
  resources :comments
end 

  root to: "events#index"
end
