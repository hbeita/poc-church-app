# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :pray_petitions do
    post '/finished', to: "pray_petitions#finished"
  end

  namespace :admin do
  end

  root 'pray_petitions#new'

  get '/gracias-por-tu-peticion', to: 'pray_petitions#thank_you'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
