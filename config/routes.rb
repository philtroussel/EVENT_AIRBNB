Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :bookings, only: [:create]
  end

  resources :caterings do
    resources :bookings, only: [:index, :show]
  end

  resources :bookings, only: [:index]
  resources :favorite_venues, only: [:index, :create, :destroy]

end
