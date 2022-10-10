Rails.application.routes.draw do
  
  
  get 'welcome/about'
  get 'welcome/home'
 
  resources :assests
end
