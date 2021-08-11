Rails.application.routes.draw do
  root to: "home#index"
  
  resources :events do
    resources :users
  end

  resources :users do
    resources :events
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
