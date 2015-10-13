# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/request_timestamp/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-request_timestamp"
  spec.version       = Rack::RequestTimestamp::VERSION
  spec.authors       = ["Shin Suzuki"]
  spec.email         = ["suzuki@sonorilo.net"]

  spec.summary       = %q{Rack middleware for Append timestamp to request information}
  spec.description   = %q{Rack middleware for Append timestamp to request information}
  spec.homepage      = "https://github.com/suzukis/rack-request_timestamp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
