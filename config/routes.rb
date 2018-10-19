Rails.application.routes.draw do
  devise_for :trainers, controllers: { omniauth_callbacks: 'trainers/omniauth_callbacks' }
  root 'tutorials#index'
  get 'tutorials/trainer_tutorials' => "tutorials#trainer_tutorials"
  get 'tutorials/with_comments', to: 'tutorials#with_comments'

  resources :tutorials, only: [:show] do
    resources :comments, only: [:create, :update, :destroy, :show, :index, :edit, :new]
  end


  resources :tutorials, only: [:index, :create, :show, :edit, :update, :destroy, :new]
end
