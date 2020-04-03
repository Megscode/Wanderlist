Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :routes do
    get '/routes/yours', to: 'routes#yours'
  end
  resources :places
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
