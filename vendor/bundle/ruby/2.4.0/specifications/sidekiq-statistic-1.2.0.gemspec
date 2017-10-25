# -*- encoding: utf-8 -*-
# stub: sidekiq-statistic 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-statistic".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Anton Davydov".freeze]
  s.bindir = "exe".freeze
  s.date = "2015-11-19"
  s.description = "See statistic about your workers (GSoC project)".freeze
  s.email = ["antondavydov.o@gmail.com".freeze]
  s.homepage = "https://github.com/davydovanton/sidekiq-statistic".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "See statistic about your workers (GSoC project)".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sidekiq>.freeze, ["< 5", ">= 3.3.4"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 0"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rack-test>.freeze, ["~> 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 5.0.7", "~> 5.0"])
      s.add_development_dependency(%q<minitest-utils>.freeze, ["~> 0"])
    else
      s.add_dependency(%q<sidekiq>.freeze, ["< 5", ">= 3.3.4"])
      s.add_dependency(%q<rake>.freeze, ["~> 0"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
      s.add_dependency(%q<mocha>.freeze, ["~> 0"])
      s.add_dependency(%q<rack-test>.freeze, ["~> 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 5.0.7", "~> 5.0"])
      s.add_dependency(%q<minitest-utils>.freeze, ["~> 0"])
    end
  else
    s.add_dependency(%q<sidekiq>.freeze, ["< 5", ">= 3.3.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 0"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.0.7", "~> 5.0"])
    s.add_dependency(%q<minitest-utils>.freeze, ["~> 0"])
  end
end
