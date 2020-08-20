Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :astrologists, only: [:index, :show, :new, :create, :edit, :update, :dashboard] do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show]
  get 'dashboard', to: 'astrologists#dashboard'
end

