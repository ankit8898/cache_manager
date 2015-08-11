module CacheReader
  class Stats

    attr_reader :stats, :keys

    def initialize
      @stats = Rails.cache.stats
      @keys  = Rails.cache.instance_variable_get(:@data).keys
    end
  end
end
