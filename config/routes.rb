Rails.application.routes.draw do
# devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
devise_for :users, path: 'jinda/user', class_name: 'Jinda::User', :controllers => { :omniauth_callbacks => "jinda/omniauth_callbacks" }
  get 'welcomes/index'
  root to: 'welcomes#index'
  resources :welcomes
end
