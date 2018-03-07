# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :companies do
    collection do
      get :pdf
      get :accounts
    end
  end
  resources :phones do
    collection do
      get :import
      post :import_excess
    end
  end
end
