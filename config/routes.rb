Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :user, only: :show
  resources :developers do
    resources :bookings, only: %i[new create index destroy]
  end
end
