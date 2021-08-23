Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trips, only: [ :new, :create, :show, :index, :destroy]
  resources :hotel_bookings
  resources :activity_bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
