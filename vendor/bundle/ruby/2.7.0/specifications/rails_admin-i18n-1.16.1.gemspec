# -*- encoding: utf-8 -*-
# stub: rails_admin-i18n 1.16.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin-i18n".freeze
  s.version = "1.16.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nam Pham Trung, Luiz Picolo".freeze]
  s.date = "2021-04-25"
  s.description = "Translations for the rails_admin gem".freeze
  s.email = ["puma.puma07@gmail.com, luizpicolo@gmail.com".freeze]
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/starchow/rails_admin-i18n".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Translations for the rails_admin gem".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_development_dependency(%q<fuubar>.freeze, [">= 0"])
    s.add_development_dependency(%q<i18n-spec>.freeze, [">= 0"])
    s.add_development_dependency(%q<localeapp>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<fuubar>.freeze, [">= 0"])
    s.add_dependency(%q<i18n-spec>.freeze, [">= 0"])
    s.add_dependency(%q<localeapp>.freeze, [">= 0"])
  end
end
