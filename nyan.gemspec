# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nyan/version'

Gem::Specification.new do |spec|
  spec.name          = "nyan"
  spec.version       = Nyan::VERSION
  spec.authors       = ["Alex Coco", "Antoine Grondin"]
  spec.email         = ["alex.coco@shopify.com", "antoine.grondin@shopify.com"]
  spec.description   = %q{Nyan cat game in Ruby with Gosu}
  spec.summary       = %q{Nyan cat game}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "gosu", "~> 0.7"
end
