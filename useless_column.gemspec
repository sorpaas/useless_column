$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_logic/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "useless_column"
  s.version     = UselessColumn::VERSION
  s.authors     = ["sorpa'as plat"]
  s.email       = ["sorpaas@gmail.com"]
  s.homepage    = "https://github.com/sorpaas/useless_column"
  s.summary     = "Detect useless columns in rails app"
  s.description = "A tool for detection of useless columns in rails apps"

  s.files = Dir["{bin,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
end
