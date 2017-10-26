# frozen_string_literal: true

Rails.application.routes.draw do
  resources :companies
  root 'phones#index'
  resources :phones do
    collection do
      get :pdf
      post :import
    end
  end
end
