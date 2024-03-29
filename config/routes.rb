Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 
  root to: "home#index"
  get "/texts", to: "texts#index"
  get "/texts/:id", to: "texts#show"

  resources :texts do
    resources :lines
  end
end
