require_dependency "cache_manager/application_controller"

module CacheManager
  class KeysController < ApplicationController
    def index
      @keys = Key.all
    end

    def show
      @key = Key.find(params[:id])
    end

    def destroy
      puts "-------#{params[:id]}"
      @key = Key.destroy(params[:id])
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Key successfully deleted.' }
      end
    end
  end
end
