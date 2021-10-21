Rails.application.routes.draw do
  devise_for :users
  resources :properties
  resources :contractors
  resources :realtors
  resources :homes

  root to: "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
