Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  
  resources :events do
    resources :users
  end

  resources :users do
    resources :events
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
