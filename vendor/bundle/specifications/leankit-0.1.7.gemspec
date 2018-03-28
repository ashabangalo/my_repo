# -*- encoding: utf-8 -*-
# stub: leankit 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "leankit".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Noah Pryor".freeze]
  s.date = "2014-04-24"
  s.description = "Ruby Wrapper around LeanKitKanban Api".freeze
  s.email = "noah@noahpryor.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze, "lib/leankit.rb".freeze, "lib/leankit/archive.rb".freeze, "lib/leankit/backlog.rb".freeze, "lib/leankit/board.rb".freeze, "lib/leankit/card.rb".freeze, "lib/leankit/config.rb".freeze, "lib/leankit/version.rb".freeze, "lib/leankit_request.rb".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "lib/leankit.rb".freeze, "lib/leankit/archive.rb".freeze, "lib/leankit/backlog.rb".freeze, "lib/leankit/board.rb".freeze, "lib/leankit/card.rb".freeze, "lib/leankit/config.rb".freeze, "lib/leankit/version.rb".freeze, "lib/leankit_request.rb".freeze]
  s.homepage = "http://github.com/noahpryor/leankitkanban".freeze
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "Leankit".freeze, "--main".freeze, "README.md".freeze]
  s.rubyforge_project = "leankit".freeze
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Ruby Wrapper around LeanKitKanban Api".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>.freeze, [">= 1.6.1"])
      s.add_runtime_dependency(%q<httparty>.freeze, ["= 0.8.1"])
      s.add_development_dependency(%q<echoe>.freeze, ["= 4.6.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["= 2.7.0"])
    else
      s.add_dependency(%q<json>.freeze, [">= 1.6.1"])
      s.add_dependency(%q<httparty>.freeze, ["= 0.8.1"])
      s.add_dependency(%q<echoe>.freeze, ["= 4.6.3"])
      s.add_dependency(%q<rspec>.freeze, ["= 2.7.0"])
    end
  else
    s.add_dependency(%q<json>.freeze, [">= 1.6.1"])
    s.add_dependency(%q<httparty>.freeze, ["= 0.8.1"])
    s.add_dependency(%q<echoe>.freeze, ["= 4.6.3"])
    s.add_dependency(%q<rspec>.freeze, ["= 2.7.0"])
  end
end
