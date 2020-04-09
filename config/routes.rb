Rails.application.routes.draw do
  get '/nearby', to: 'welcome#nearby'  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :routes do
    post :upvote, on: :member
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
