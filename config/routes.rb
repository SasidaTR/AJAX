Rails.application.routes.draw do
  get 'emails/index'
  root 'emails#index'

  resources :emails

end
