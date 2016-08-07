Rails.application.routes.draw do
  resources :pictures, only: [:index, :new, :create, :edit, :update, :destroy]
end
