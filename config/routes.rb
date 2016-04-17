Rails.application.routes.draw do
  root 'pages#index'

  resources :users, :only => [:new, :create, :index, :update]
  get '/users/edit' => 'users#edit', :as => 'edit_user'

  resources :applications
  resources :jobs

  get '/signup' => 'users#new'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
