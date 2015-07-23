# -*- encoding: utf-8 -*-
# stub: rails-angular-material 0.8.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-angular-material"
  s.version = "0.8.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alexander Bobrov"]
  s.date = "2015-04-03"
  s.description = "Injects AngularMaterial into your asset pipeline."
  s.email = "alexander@devvela.com"
  s.homepage = "https://github.com/alexkpek/rails-angular-material"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "AngularMaterial on Rails"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-angularjs>, [">= 1"])
    else
      s.add_dependency(%q<rails-angularjs>, [">= 1"])
    end
  else
    s.add_dependency(%q<rails-angularjs>, [">= 1"])
  end
end
