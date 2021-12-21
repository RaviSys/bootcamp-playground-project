Rails.application.routes.draw do
  resources :posts
  resources :parts
  resources :assemblies
  resources :subscribers
  resources :video_channels
  resources :books
  resources :authors
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
