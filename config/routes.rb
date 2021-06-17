Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :events, only: %i[index new create show edit update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "events#index"

end
