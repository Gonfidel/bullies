Rails.application.routes.draw do
  
  root 'catagories#home'

  devise_for :admins

  resources :posts
  resources :catagories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
