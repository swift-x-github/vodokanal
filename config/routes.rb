Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :vodokanals 
    

  resources :watermeters do
    resources :watermeter_indications
  end
  root to: 'home#index'

  resources :watermeters 

  devise_for :accounts

   
  
end
