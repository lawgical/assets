# -*- encoding: utf-8 -*-
require File.expand_path('../lib/assets/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chad Jolly"]
  gem.email         = ["cjolly@lawgical.com"]
  gem.description   = %q{Lawgical Assets}
  gem.summary       = %q{Lawgical Assets}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "assets"
  gem.require_paths = ["lib"]
  gem.version       = Assets::VERSION
end
