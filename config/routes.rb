Rails.application.routes.draw do
  devise_for :trainers, controllers: { omniauth_callbacks: 'trainers/omniauth_callbacks' }
  root 'tutorials#index'
  get 'tutorials/trainer_tutorials', to: 'tutorials#trainer_tutorials'
  get 'tutorials/with_comments', to: 'tutorials#with_comments'
  get 'tutorials/:id/tutorial_data', to: 'tutorials#tutorial_data'
  
  resources :tutorials do
    resources :comments
  end

  resources :trainers do
    resources :tutorials
  end

  resources :trainers do
    resources :comments
  end

  resources :tutorials
end
