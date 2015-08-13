CacheManager::Engine.routes.draw do

  resources :stats, only: :index
  resources :keys, only: [:index, :show, :destroy]

  root to: "stats#index"
end
