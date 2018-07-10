Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
  
  get 'api/items/fetch_items', :to => 'api/items#fetch_items', :as => 'fetch_items'
  get 'api/items/fetch_similar_items', :to => 'api/items#fetch_similar_items', :as => 'fetch_similar_items'


  namespace :api, defaults: { format: :json } do
    resources :items
  end

  resources :items
  
end
