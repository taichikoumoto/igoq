Rails.application.routes.draw do
  root 'phones#index'
  resources :phones do
    collection do
      post :import
    end
  end
end
