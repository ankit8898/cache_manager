CacheManager::Engine.routes.draw do

  resources :stats, only: :index
  resources :keys, only: [:index, :show]

  root to: "stats#index"
end
