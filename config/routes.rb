Rails.application.routes.draw do
  resources :shortlists
  post '/rate' => 'rater#create', :as => 'rate'
  root 'pages#index'

  resources :users, :only => [:new, :create, :index, :update]
  get '/users/edit' => 'users#edit', :as => 'edit_user'
  get '/users/applications' => 'users#applications'
  get 'users/user_jobs' => 'users#user_jobs'
  resources :jobs do

    resources :applications
  end

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
