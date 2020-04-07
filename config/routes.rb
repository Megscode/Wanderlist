Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :routes 
  get '/nearby', to: 'welcome#nearby'  
  get '/searched_routes', to: 'welcome#searched'  

  
  resources :places
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
