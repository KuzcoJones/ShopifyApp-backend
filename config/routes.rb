Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'login', to: 'auth#create', as: '/login'
  get 'myuser', to: 'auth#show', as: '/myuser'
  resources :user, only: [:create, :show]
  resources :images, only: [:index, :create, :show, :delete, :update]
  post '/rails/active_storage/direct_uploads', to: 'direct_uploads#create'
  get '/search' => 'images#search', :as => 'search_page'
  get '/search/:search', to: 'images#search'
end
