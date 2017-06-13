Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :gyms do
    resources :bookings do
      resources :payments, only: [:new, :create]
    end
    get :search, on: :collection
  end

  resources :users
end

