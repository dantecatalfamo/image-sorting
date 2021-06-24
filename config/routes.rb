# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'index#index', as: 'index'
  post '/', to: 'index#battle', as: 'battle'
  resources :images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
