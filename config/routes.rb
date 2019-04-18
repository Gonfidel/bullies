Rails.application.routes.draw do
  
  root 'catagories#home'
  get 'contactus', to: 'catagories#contactus'
  devise_for :admins, skip: [:registrations]
  as :admin do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_admin_registration" # custom path to sign_up/registration
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end

  resources :posts
  resources :catagories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
