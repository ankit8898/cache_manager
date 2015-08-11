module CacheManager
  class Stats

    #Rails.cache.instance_variable_get(:@data).keys
    class << self
      def all
        Rails.cache.stats
      end
    end
  end
end
