module CacheManager
  class Engine < ::Rails::Engine
    isolate_namespace CacheManager

    initializer :assets do |app|
      Rails.application.config.assets.precompile += %w( cm.css )
      Rails.application.config.assets.precompile += %w( cm.js )

      # number of complex assets.
Rails.application.config.assets.debug = true
Rails.application.config.assets.raise_runtime_errors = true

# Asset digests allow you to set far-future HTTP expiration dates on all assets,
# yet still be able to expire them through the digest params.
    Rails.application.config.assets.digest = true

    end
  end
end
