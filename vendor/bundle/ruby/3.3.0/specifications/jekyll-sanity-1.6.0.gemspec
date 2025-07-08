# -*- encoding: utf-8 -*-
# stub: jekyll-sanity 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-sanity".freeze
  s.version = "1.6.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jordon Bedwell".freeze]
  s.date = "2020-03-06"
  s.description = "Patches to make Jekyll less insane and easier".freeze
  s.email = ["jordon@envygeeks.io".freeze]
  s.homepage = "http://github.com/envygeeks/jekyll-sanity".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Configuration, Paths and other stuff".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, [">= 1".freeze, "< 99".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 3".freeze, "< 4".freeze])
  s.add_development_dependency(%q<envygeeks-rubocop>.freeze, ["= 1.0.0".freeze])
  s.add_development_dependency(%q<luna-rspec-formatters>.freeze, ["~> 3.16".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0.1".freeze, "< 0.99".freeze])
  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.1".freeze, "< 5.0".freeze])
  s.add_runtime_dependency(%q<pathutil>.freeze, ["~> 0.16".freeze])
end
