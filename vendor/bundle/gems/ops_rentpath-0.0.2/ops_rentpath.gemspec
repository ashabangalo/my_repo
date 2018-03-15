# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ops_rentpath/version'

Gem::Specification.new do |spec|
  spec.name          = "ops_rentpath"
  spec.version       = OpsRentpath::VERSION
  spec.authors       = ["Michael Pelz-Sherman"]
  spec.email         = ["mpelzsherman@rentpath.com"]

  spec.summary       = %q{Extends the public ops gem with RentPath-specific stuff.}
  spec.description   = spec.summary

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://gems.idg.primedia.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "geminabox"

end
