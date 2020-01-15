Rails.application.routes.draw do
  get 'behaviours/index'

  resources :behaviours do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'behaviours#index'
end
