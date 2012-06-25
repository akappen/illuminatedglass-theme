$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "illuminatedglass-theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "illuminatedglass-theme"
  s.version     = IlluminatedglassTheme::VERSION
  s.authors     = ["Andrew Kappen"]
  s.email       = ["akappen@gmail.com"]
  s.homepage    = "www.illuminatedglass.com"
  s.summary     = "Grokphoto theme for www.illuminatedglass.com"
  s.description = "Theme for grokphoto used on the www.illuminatedglass.com website."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
end
