Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "users/sign_out" => "devise/sessions#destroy"
  end

  get "/home", to: "home#index"
  root "home#index"
  get "/favicon.ico", to: ->(_) { [ 204, {}, [] ] }

  resources :user_dashboard, only: [ :index ]
  resources :documents
  resources :reports, only: [ :index, :show ]
end
