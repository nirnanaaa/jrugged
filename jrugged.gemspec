$:.push File.expand_path("../lib", __FILE__)
require 'jrugged/version'

Gem::Specification.new do |s|
  s.name = "jrugged"
  s.rubyforge_project = s.name
  s.version = JRugged::VERSION
  s.author = "Florian Kasper"
  s.email = "mosny@zyg.li"
  s.summary = "Git bindings for Java"
  s.homepage = "https://github.com/nirnanaaa/jrugged"
  s.require_paths = ["lib", "jar"]
  s.files = `git ls-files`.split("\n").sort

  s.add_development_dependency "rspec", "~> 2.13.0"
  s.add_development_dependency "mocha", "~> 0.13.3"

end
