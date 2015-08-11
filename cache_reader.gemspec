$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cache_reader/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cache_reader"
  s.version     = CacheReader::VERSION
  s.authors     = ["Ankit Gupta"]
  s.email       = ["ankit.gupta@move.com"]
  s.homepage    = "http://www.google.com"
  s.summary     = "Summary of CacheReader."
  s.description = "Description of CacheReader."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_development_dependency "sqlite3"
end
