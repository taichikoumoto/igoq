# -*- encoding: utf-8 -*-
# stub: by_star 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "by_star".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Bigg".freeze, "Johnny Shields".freeze]
  s.date = "2014-04-21"
  s.description = "ActiveRecord and Mongoid extension for easier date scopes and time ranges".freeze
  s.email = ["radarlistener@gmail.com".freeze]
  s.homepage = "http://github.com/radar/by_star".freeze
  s.post_install_message = "Upgrading ByStar\n----------------\n\n* ActiveRecord: the `between` method has been deprecated as of version 2.2.0, and will be removed in version 3.0.0.\nPlease use `between_times` instead.\n\n* Mongoid: the `between` method has been removed as of version 2.2.0, as it conflicts with the native Mongoid `between`\nmethod. Please use `between_times` instead.\n\n* Chronic gem (used for time string parsing) has been removed as a hard dependency for ByStar,\nhowever it is still supported. If you would like to use Chronic with ByStar, please explicitly\ninclude `gem chronic` into your Gemfile.\n".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "ActiveRecord and Mongoid extension for easier date scopes and time ranges".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_development_dependency(%q<chronic>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<activerecord>.freeze, [">= 0"])
      s.add_development_dependency(%q<mongoid>.freeze, [">= 0"])
      s.add_development_dependency(%q<pg>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 2.14"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.3"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<chronic>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 0"])
      s.add_dependency(%q<mongoid>.freeze, [">= 0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.14"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.3"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<chronic>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 0"])
    s.add_dependency(%q<mongoid>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.14"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.3"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
