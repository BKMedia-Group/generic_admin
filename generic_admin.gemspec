$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "generic_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "generic_admin"
  s.version     = GenericAdmin::VERSION
  s.authors     = ["Josh Horner"]
  s.email       = ["josh@bkmediagroup.com"]
  s.summary     = "the name says it all."
  s.description = "the name says it all."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "bcrypt-ruby"

  s.add_development_dependency "sqlite3"
end
