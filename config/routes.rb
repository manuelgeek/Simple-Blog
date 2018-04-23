Rails.application.routes.draw do
  get 'pages_controller/index'
  devise_for :user
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/register" => "devise/registrations#new"
    get "/logout" => "devise/sessions#destroy"
  end

  resources :articles

  get "/blog" => "blog#index"
  get "/blog/:id" => "blog#single"

  root "pages_controller#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
