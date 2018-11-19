Rails.application.routes.draw do
  root 'animals#index'

  devise_for :zoos
  
  resources :animals 
end
