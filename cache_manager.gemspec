$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cache_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cache_manager"
  s.version     = CacheManager::VERSION
  s.authors     = ["Ankit Gupta"]
  s.email       = ["ankit.gupta8898@gmail.com"]
  s.homepage    = "https://github.com/ankit8898/cache_manager"
  s.summary     = "Rails engine to manage your cache"
  s.description = "Cache manager helps in managing your cache and it's keys"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_development_dependency "sqlite3"
end
