Rails.application.routes.draw do
  resources :properties
  resources :contractors
  resources :realtors
  resources :homes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
