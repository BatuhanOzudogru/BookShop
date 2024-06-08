Rails.application.routes.draw do
  resources :authors do
    resources :books
  end

  resources :books, only: [:show, :edit, :update, :destroy]

  root "authors#index"
end
