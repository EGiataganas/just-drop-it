Rails.application.routes.draw do
  devise_for :users
  resources :resources
  get 'pages/about'

  get 'pages/contact'

  root 'resources#index'
end
