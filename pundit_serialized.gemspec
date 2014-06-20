# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pundit_serialized/version'

Gem::Specification.new do |gem|
  gem.name          = "pundit_serialized"
  gem.version       = PunditSerialized::VERSION
  gem.authors       = ["Vassil Kalkov", "Vladimir Konushliev", "Georgi Tapalilov"]
  gem.email         = ["vassilkalkov@gmail.com", "v.konushliev@gmail.com", "tapalilov@gmail.com"]
  gem.description   = %q{Adds Pundit permissions in ActiveModel Serializers}
  gem.summary       = %q{Adds Pundit permissions in ActiveModel Serializers}
  gem.homepage      = "https://github.com/bikezilla/pundit_serialized"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "active_model_serializers"
  gem.add_dependency "activesupport"
  gem.add_dependency "pundit"
end