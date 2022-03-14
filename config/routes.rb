Rails.application.routes.draw do
  resources :photographers
  resources :comments
  resources :photos
  resources :reviews
  resources :cameras
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
