# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pray_petitions

  root 'pray_petitions#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
