Rails.application.routes.draw do
  devise_for :trainers
  root 'tutorials#index'

  resources :tutorials

  resources :tutorials do
    resources :comments
  end

  get 'tutorial/with_comments', to: 'tutorials#with_comments'
end
