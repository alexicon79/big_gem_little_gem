# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'big_gem_little_gem/version'

Gem::Specification.new do |s|
  s.add_development_dependency "rspec"
  # Other attributes omitted
end

Gem::Specification.new do |spec|
  spec.name          = "big_gem_little_gem"
  spec.version       = BigGemLittleGem::VERSION
  spec.authors       = ["Alexander Hall"]
  spec.email         = ["ah@alxhall.se"]
  spec.summary       = %q{A test gem}
  spec.description   = %q{No useful functionality yet whatsoever}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
