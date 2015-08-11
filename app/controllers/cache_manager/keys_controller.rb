require_dependency "cache_manager/application_controller"

module CacheManager
  class KeysController < ApplicationController
    def index
      @keys = Key.all
    end

    def show
      @key = Key.find(params[:id])
    end
  end
end
