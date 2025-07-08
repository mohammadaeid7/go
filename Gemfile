source "https://rubygems.org"

# Jekyll and core dependencies
gem "jekyll", "~> 4.3.0"
gem "minima", "~> 2.5"

# Performance and SEO plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17"
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
  gem "jekyll-compress-html"
end

# Windows and JRuby does not include zoneinfo files
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]