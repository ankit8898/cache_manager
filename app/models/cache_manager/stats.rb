module CacheManager
  class Stats
    attr_reader :klass

    def initialize
      @klass = Rails.cache.class.to_s
    end

    class << self
      def all
        new.all
      end
    end

    def all
      case @klass
      when 'ActiveSupport::Cache::FileStore'
        {}
      else
        Rails.cache.stats
      end
    end
  end
end
