Rails.application.routes.draw do

  mount CacheManager::Engine => "/cache_manager"
end
