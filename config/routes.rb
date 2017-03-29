Rails.application.routes.draw do

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"


  resources :posts do
    resources :comments
  end
#  devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
