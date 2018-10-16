Rails.application.routes.draw do
  devise_for :trainers
  root 'tutorials#index'

  get 'tutorials/with_comments', to: 'tutorials#with_comments'

  resources :tutorials

  resources :tutorials do
    resources :comments
  end

end
