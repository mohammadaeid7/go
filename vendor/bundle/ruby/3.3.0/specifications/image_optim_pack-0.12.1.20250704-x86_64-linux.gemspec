# -*- encoding: utf-8 -*-
# stub: image_optim_pack 0.12.1.20250704 x86_64-linux lib

Gem::Specification.new do |s|
  s.name = "image_optim_pack".freeze
  s.version = "0.12.1.20250704".freeze
  s.platform = "x86_64-linux".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/toy/image_optim_pack/issues", "changelog_uri" => "https://github.com/toy/image_optim_pack/blob/master/CHANGELOG.markdown", "documentation_uri" => "https://www.rubydoc.info/gems/image_optim_pack/0.12.1.20250704", "source_code_uri" => "https://github.com/toy/image_optim_pack" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "1980-01-02"
  s.homepage = "https://github.com/toy/image_optim_pack".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.6.8".freeze
  s.summary = "Precompiled binaries for image_optim: advpng, gifsicle, jhead, jpeg-recompress, jpegoptim, jpegtran, optipng, oxipng, pngcrush, pngout, pngquant".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<image_optim>.freeze, ["~> 0.19".freeze])
  s.add_runtime_dependency(%q<fspath>.freeze, [">= 2.1".freeze, "< 4".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.22".freeze, "!= 1.22.2".freeze])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.0".freeze])
end
