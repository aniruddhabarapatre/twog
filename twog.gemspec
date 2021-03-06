# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "twog"
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Meridth"]
  s.date = "2013-01-29"
  s.description = "Tool to tweet blog posts"
  s.email = ["jmeridth@gmail.com"]
  s.executables = ["twog"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".rvmrc",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "History.rdoc",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION.yml",
    "bin/twog",
    "lib/twog.rb",
    "lib/twog/blog_posts_handler.rb",
    "lib/twog/post.rb",
    "lib/twog/rss_entry_to_twog_post_mapper.rb",
    "lib/twog/rss_parser.rb",
    "lib/twog/twitter_handler.rb",
    "spec/spec_helper.rb",
    "spec/twog/blog_posts_handler_spec.rb",
    "spec/twog/post_spec.rb",
    "spec/twog/rss_entry_to_twog_post_mapper_spec.rb",
    "spec/twog/rss_parser_spec.rb",
    "spec/twog/twitter_handler_spec.rb",
    "spec/twog/twog_spec.rb",
    "twog.gemspec"
  ]
  s.homepage = "http://github.com/jmeridth/twog"
  s.require_paths = ["lib"]
  s.rubyforge_project = "twog"
  s.rubygems_version = "1.8.24"
  s.summary = "Tool to tweet blog posts"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<twitter_oauth>, [">= 0.3.3"])
      s.add_runtime_dependency(%q<bitly>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<whenever>, [">= 0.4.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.5"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0.11.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_runtime_dependency(%q<twitter_oauth>, [">= 0.3.3"])
      s.add_runtime_dependency(%q<bitly>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<whenever>, [">= 0.4.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.5"])
    else
      s.add_dependency(%q<twitter_oauth>, [">= 0.3.3"])
      s.add_dependency(%q<bitly>, [">= 0.4.0"])
      s.add_dependency(%q<whenever>, [">= 0.4.1"])
      s.add_dependency(%q<activesupport>, [">= 2.3.5"])
      s.add_dependency(%q<jeweler>, [">= 0.11.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<twitter_oauth>, [">= 0.3.3"])
      s.add_dependency(%q<bitly>, [">= 0.4.0"])
      s.add_dependency(%q<whenever>, [">= 0.4.1"])
      s.add_dependency(%q<activesupport>, [">= 2.3.5"])
    end
  else
    s.add_dependency(%q<twitter_oauth>, [">= 0.3.3"])
    s.add_dependency(%q<bitly>, [">= 0.4.0"])
    s.add_dependency(%q<whenever>, [">= 0.4.1"])
    s.add_dependency(%q<activesupport>, [">= 2.3.5"])
    s.add_dependency(%q<jeweler>, [">= 0.11.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<twitter_oauth>, [">= 0.3.3"])
    s.add_dependency(%q<bitly>, [">= 0.4.0"])
    s.add_dependency(%q<whenever>, [">= 0.4.1"])
    s.add_dependency(%q<activesupport>, [">= 2.3.5"])
  end
end

