Rails.application.routes.draw do
  resources :applications
  resources :jobs
  root 'pages#index'
end
