# -*- encoding: utf-8 -*-
# stub: leankit 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "leankit"
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Noah Pryor"]
  s.date = "2014-04-24"
  s.description = "Ruby Wrapper around LeanKitKanban Api"
  s.email = "noah@noahpryor.com"
  s.extra_rdoc_files = ["LICENSE", "README.md", "lib/leankit.rb", "lib/leankit/archive.rb", "lib/leankit/backlog.rb", "lib/leankit/board.rb", "lib/leankit/card.rb", "lib/leankit/config.rb", "lib/leankit/version.rb", "lib/leankit_request.rb"]
  s.files = ["Gemfile", "Gemfile.lock", "LICENSE", "Manifest", "README.md", "Rakefile", "leankit.gemspec", "lib/leankit.rb", "lib/leankit/archive.rb", "lib/leankit/backlog.rb", "lib/leankit/board.rb", "lib/leankit/card.rb", "lib/leankit/config.rb", "lib/leankit/version.rb", "lib/leankit_request.rb", "spec/leankit/archive_spec.rb", "spec/leankit/backlog_spec.rb", "spec/leankit/board_spec.rb", "spec/leankit/card_spec.rb", "spec/leankit/config_spec.rb", "spec/spec_helper.rb", "spec/support/config_helper.rb"]
  s.homepage = "http://github.com/noahpryor/leankitkanban"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Leankit", "--main", "README.md"]
  s.rubyforge_project = "leankit"
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby Wrapper around LeanKitKanban Api"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.6.1"])
      s.add_runtime_dependency(%q<httparty>, ["= 0.8.1"])
      s.add_development_dependency(%q<echoe>, ["= 4.6.3"])
      s.add_development_dependency(%q<rspec>, ["= 2.7.0"])
    else
      s.add_dependency(%q<json>, [">= 1.6.1"])
      s.add_dependency(%q<httparty>, ["= 0.8.1"])
      s.add_dependency(%q<echoe>, ["= 4.6.3"])
      s.add_dependency(%q<rspec>, ["= 2.7.0"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.6.1"])
    s.add_dependency(%q<httparty>, ["= 0.8.1"])
    s.add_dependency(%q<echoe>, ["= 4.6.3"])
    s.add_dependency(%q<rspec>, ["= 2.7.0"])
  end
end
