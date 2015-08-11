require_dependency "cache_reader/application_controller"

module CacheReader
  class KeysController < ApplicationController
    def index
      @keys = Key.all
    end

    def show
      @key = Key.find(params[:id])
    end
  end
end
