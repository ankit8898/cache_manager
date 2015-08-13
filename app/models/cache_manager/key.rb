module CacheManager
  class Key
    EXCLUDED_DIRS = ['.', '..', 'assets'].freeze

    attr_reader :klass

    def initialize
      @klass = Rails.cache.class.to_s
    end

    # Rails.cache.instance_variable_get(:@data).keys
    class << self
      def all
        new.all
      end

      def find(id)
        Rails.cache.read(id)
      end

      def destroy(id)
        Rails.cache.delete(id)
      end
    end

    def all
      case @klass
      when 'ActiveSupport::Cache::FileStore'
        keys_for_file_store
      else
        keys_for_memory_store
      end
    end

    def keys_for_memory_store
      Rails.cache.instance_variable_get(:@data).keys
    end

    def keys_for_file_store
      cache_path = Rails.cache.instance_variable_get(:'@cache_path')
      root_dirs = Dir.entries(cache_path).reject { |f| (EXCLUDED_DIRS + ['.gitkeep']).include?(f) }
      full_paths = root_dirs.collect { |i| cache_path + "#{i}" }
      full_paths.collect do |dir|
        File.basename(Dir["#{dir}/*/*"][0]) if Dir["#{dir}/*/*"][0]
      end
    end
  end
end
