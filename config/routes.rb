# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :companies
  root 'phones#index'
  resources :phones do
    collection do
      get :pdf
      get :accounts
      get :import
      post :import_excess
    end
  end
end
