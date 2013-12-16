# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meducation_sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "meducation_sdk"
  spec.version       = MeducationSDK::VERSION
  spec.authors       = ["Jeremy Walker"]
  spec.email         = ["jez.walker@gmail.com"]
  spec.description   = "Meducation's SDK"
  spec.summary       = "The SDK for Meducation"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", '~> 3.2.15'
  spec.add_dependency "loquor", '~> 0.7.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "minitest", '~> 5.0.8'
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "rake"
end
