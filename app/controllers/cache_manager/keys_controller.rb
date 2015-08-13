require_dependency "cache_manager/application_controller"

module CacheManager
  class KeysController < ApplicationController
    def index
      @keys = Key.all
    end

    def show
      @key = Key.find(params[:id])
    end

    def flush
      @key = Key.flush(params[:key])
      respond_to do |format|
        format.html { redirect_to keys_url, notice: 'Keys were successfully flushed.' }
      end
    end
  end
end
