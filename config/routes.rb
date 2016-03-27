Rails.application.routes.draw do
  resources :resources
  get 'pages/about'

  get 'pages/contact'
end
