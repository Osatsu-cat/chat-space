Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:new, :create, :edit, :update, :index]
  resources :groups, only:[:new, :create, :edit, :update] do
    resources :messeges, only:[:index, :create]
  end
end
