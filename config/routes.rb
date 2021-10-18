Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos, only: [:index, :show, :create, :update, :destroy] do
    resources :items, only: [:index, :show, :create, :update, :destroy]
  end

  post 'auth/login', to: 'authentication#authenticate'
end
