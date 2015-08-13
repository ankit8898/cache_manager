CacheManager::Engine.routes.draw do

  resources :stats, only: :index
  resources :keys, only: [:index, :show] do
    put :flush, on: :collection
  end

  root to: "stats#index"
end
