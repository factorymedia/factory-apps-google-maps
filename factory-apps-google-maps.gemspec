# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'factory/apps/google/maps/version'

Gem::Specification.new do |spec|
  spec.name          = "factory-apps-google-maps"
  spec.version       = Factory::Apps::Google::Maps::VERSION
  spec.authors       = ["Joe Connor"]
  spec.email         = ["joe.connor@factorymedia.com"]
  spec.description   = %q{Extract the google maps image helpers so they can be reused across applications}
  spec.summary       = %q{Extract the google maps image helpers so they can be reused across applications}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
