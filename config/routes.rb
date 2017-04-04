Rails.application.routes.draw do

  resources :users
  
  root 'users#index'
	get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end
