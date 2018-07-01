Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
  namespace :api, defaults: { format: :json } do
  	get 'items/fetch_items', :to => 'items#fetch_items', :as => 'fetch_items'
    resources :items
  end

  resources :items
  
end
