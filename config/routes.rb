Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trips do
    resources :activity_bookings, only: [:new, :create, :update, :edit, :show ]
    resources :hotel_bookings, only: [:new, :create, :update, :edit, :show ]
  end
  resources :activity_bookings, only: [ :destroy ]
  resources :hotel_bookings, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
