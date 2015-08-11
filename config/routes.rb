CacheReader::Engine.routes.draw do

  resources :articles
  resources :stats, only: :index

  root to: "stats#index"
end
