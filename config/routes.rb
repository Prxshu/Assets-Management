Rails.application.routes.draw do
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  resources :assests
  get 'signup' , to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
