Rails.application.routes.draw do
  resources :users

  resources :lists do 
     resources :single_apps
  end 

  root 'welcome#index'

 
end
