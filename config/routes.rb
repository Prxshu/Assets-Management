Rails.application.routes.draw do
  get 'welcome/about'
  get 'welcome/home'
  resources :assests
  get 'signup' , to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
