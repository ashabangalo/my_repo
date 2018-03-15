# -*- encoding: utf-8 -*-
# stub: ops_rentpath 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "ops_rentpath".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "http://gems.idg.primedia.com" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Pelz-Sherman".freeze]
  s.date = "2015-05-18"
  s.description = "Extends the public ops gem with RentPath-specific stuff.".freeze
  s.email = ["mpelzsherman@rentpath.com".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Extends the public ops gem with RentPath-specific stuff.".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<geminabox>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<geminabox>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<geminabox>.freeze, [">= 0"])
  end
end
