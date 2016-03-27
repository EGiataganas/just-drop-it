Rails.application.routes.draw do
  resources :documents
  get 'pages/about'

  get 'pages/contact'
end
