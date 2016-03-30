Rails.application.routes.draw do
  resources :resources
  get 'pages/about'

  get 'pages/contact'

  root 'resources#index'
end
