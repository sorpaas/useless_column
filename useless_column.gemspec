$:.push File.expand_path("../lib", __FILE__)
require "useless_column/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "useless_column"
  s.version     = UselessColumn::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["sorpa'as plat"]
  s.email       = ["sorpaas@gmail.com"]
  s.homepage    = "https://github.com/sorpaas/useless_column"
  s.summary     = "Detect useless columns in rails app"
  s.description = "A tool for detection of useless columns in rails apps"

  s.files         = `git ls-files -- lib/*`.split("\n") + %w(History.txt License.txt README.md)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails'
end
