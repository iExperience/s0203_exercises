Rails.application.routes.draw do

  resources :bookings

  root 'bookings#index'

end
