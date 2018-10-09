Rails.application.routes.draw do
  devise_for :trainers
  root 'tutorials#index'

  resources :tutorials

end
