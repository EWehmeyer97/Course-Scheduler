Rails.application.routes.draw do
  resources :sections
  get 'sessions/new'

  
  resources :admins
  resources :professers
  resources :students
  resources :sections
  resources :recommands
  resources :applications


  get '/login_admin', to:'static_pages#login_admin'
  get '/signup_job', to:'static_pages#signup_job'
  get 'static_pages/home'

  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/login', to:'sessions#destroy'
  root 'static_pages#home'
end
