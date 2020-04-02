Rails.application.routes.draw do
  devise_for :users
  resources :routes
  resources :places
  get '/routes/yours', to: 'routes#yours'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
