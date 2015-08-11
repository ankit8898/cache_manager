module CacheReader
  class Key

    #Rails.cache.instance_variable_get(:@data).keys
    class << self
      def all
        Rails.cache.instance_variable_get(:@data).keys
      end

      def find(id)
        Rails.cache.read(id)
      end
    end
  end
end
