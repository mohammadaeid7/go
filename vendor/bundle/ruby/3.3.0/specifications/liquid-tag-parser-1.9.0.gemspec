# -*- encoding: utf-8 -*-
# stub: liquid-tag-parser 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "liquid-tag-parser".freeze
  s.version = "1.9.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jordon Bedwell".freeze]
  s.date = "2018-04-12"
  s.description = "Parse liquid tags easily".freeze
  s.email = ["jordon@envygeeks.io".freeze]
  s.homepage = "http://github.com/envygeeks/liquid-tag-parser".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Parse liquid tags like a professional".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, ["~> 12".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.11".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["= 0.52".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 3".freeze, "< 4".freeze])
  s.add_development_dependency(%q<luna-rspec-formatters>.freeze, ["~> 3.7".freeze])
  s.add_runtime_dependency(%q<liquid>.freeze, [">= 3.0".freeze, "< 5.0".freeze])
  s.add_runtime_dependency(%q<extras>.freeze, ["~> 0.3".freeze])
end
