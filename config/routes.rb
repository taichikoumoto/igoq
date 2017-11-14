# frozen_string_literal: true

Rails.application.routes.draw do
  resources :companies
  root 'phones#index'
  resources :phones do
    collection do
      get :pdf
      get :import
    end
  end
end
