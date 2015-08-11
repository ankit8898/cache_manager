require_dependency "cache_reader/application_controller"

module CacheReader
  class StatsController < ApplicationController
    def index
      @stats = Stats.all
    end
  end
end
