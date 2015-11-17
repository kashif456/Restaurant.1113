Rails.application.routes.draw do
  resources :text_ninjas
  root 'restaurants#index'
  devise_for :users
  resources :restaurants
end
