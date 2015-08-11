require_dependency "cache_manager/application_controller"

module CacheManager
  class StatsController < ApplicationController
    def index
      @stats = Stats.all
    end
  end
end
