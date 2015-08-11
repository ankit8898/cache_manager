Rails.application.routes.draw do

  mount CacheReader::Engine => "/cache_reader"
end
