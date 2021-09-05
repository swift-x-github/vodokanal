Rails.application.routes.draw do
  resources :vodokanals
  resources :watermeters do
    resources :watermeter_indications
  end
  root to: 'home#index'

  resources :watermeters 

  devise_for :accounts
end
