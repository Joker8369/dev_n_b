Rails.application.routes.draw do
  get 'developers/index'
  get 'developers/show'
  get 'developers/create'
  get 'developers/destroy'
  get 'developers/edit'
  devise_for :users
  root to: 'pages#home'
  resources :developers, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
