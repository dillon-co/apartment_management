# -*- encoding: utf-8 -*-
# stub: rails-angularjs 1.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-angularjs"
  s.version = "1.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Hirav Gandhi", "Alexander Bobrov"]
  s.date = "2015-07-15"
  s.description = "Injects Angular.js into your asset pipeline as well as other Angular modules."
  s.email = ["hgandhi@alumni.stanford.edu", "alexander@devvela.com"]
  s.homepage = "https://github.com/alexkpek/rails-angularjs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Angular.js on Rails"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0"])
      s.add_development_dependency(%q<versionomy>, ["~> 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["~> 0"])
      s.add_dependency(%q<versionomy>, ["~> 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0"])
    s.add_dependency(%q<versionomy>, ["~> 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end
