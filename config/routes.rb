Rails.application.routes.draw do
  get 'index/index'
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
