# -*- encoding: utf-8 -*-
# stub: jekyll-assets 3.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-assets".freeze
  s.version = "3.0.12".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jordon Bedwell".freeze, "Aleksey V Zapparov".freeze, "Zachary Bush".freeze]
  s.date = "2018-11-13"
  s.description = "A drop-in Jekyll Plugin that provides an asset pipeline for JavaScript,\nCSS, SASS, SCSS.  Based around Sprockets (from Rails) and just as powereful\nit provides everything you need to manage assets in Jekyll.\n".freeze
  s.email = ["jordon@envygeeks.io".freeze, "ixti@member.fsf.org".freeze, "zach@zmbush.com".freeze]
  s.homepage = "http://github.com/jekyll/jekyll-assets/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Assets for Jekyll".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<execjs>.freeze, ["~> 2.7".freeze])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.8".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, ["~> 5.0".freeze])
  s.add_runtime_dependency(%q<fastimage>.freeze, [">= 1.8".freeze, "~> 2.0".freeze])
  s.add_runtime_dependency(%q<sprockets>.freeze, [">= 3.3".freeze, "< 4.1.beta".freeze])
  s.add_runtime_dependency(%q<liquid-tag-parser>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.5".freeze, "< 4.0".freeze])
  s.add_runtime_dependency(%q<jekyll-sanity>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<pathutil>.freeze, ["~> 0.16".freeze])
  s.add_runtime_dependency(%q<extras>.freeze, ["~> 0.2".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4".freeze])
  s.add_development_dependency(%q<sassc>.freeze, ["~> 1.11".freeze])
  s.add_development_dependency(%q<uglifier>.freeze, ["~> 4.1".freeze])
  s.add_development_dependency(%q<mini_racer>.freeze, ["~> 0.1".freeze])
  s.add_development_dependency(%q<image_optim>.freeze, ["~> 0.25".freeze])
  s.add_development_dependency(%q<image_optim_pack>.freeze, ["~> 0.5".freeze])
  s.add_development_dependency(%q<font-awesome-sass>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<luna-rspec-formatters>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<autoprefixer-rails>.freeze, ["~> 8.2".freeze])
  s.add_development_dependency(%q<babel-transpiler>.freeze, ["~> 0.7".freeze])
  s.add_development_dependency(%q<mini_magick>.freeze, ["~> 4.2".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16".freeze])
  s.add_development_dependency(%q<bootstrap>.freeze, ["~> 4.0".freeze])
  s.add_development_dependency(%q<crass>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["= 0.52".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0".freeze])
end
