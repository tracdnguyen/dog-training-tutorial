Rails.application.routes.draw do
  devise_for :trainers, controllers: { omniauth_callbacks: 'trainers/omniauth_callbacks' }
  root 'tutorials#index'
  get 'trainer/tutorials', to: 'tutorials#trainer_tutorials'
  get 'tutorials/with_comments', to: 'tutorials#with_comments'

  resources :tutorials

  resources :tutorials do
    resources :comments
  end

end
