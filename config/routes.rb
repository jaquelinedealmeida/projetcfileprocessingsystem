Rails.application.routes.draw do
  get "reports/index"
  get "reports/show"
  resources :documents
  get "user_dashboard/index"
  get "home/index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  #get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  #get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "home#index"

  get "/home", to: "home#index"

  resource :user_dashboard, only: [:index]
  resources :documents
  resources :reports, only: [:index, :show]
end
