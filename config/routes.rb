Rails.application.routes.draw do
  # get 'doses/show'
  # get 'doses/new'
  # get 'doses/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy
end

