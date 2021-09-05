# -*- encoding: utf-8 -*-
# stub: date_range_formatter 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "date_range_formatter".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mikhail Kuzmin".freeze, "Mikhail Dronov".freeze]
  s.date = "2014-06-17"
  s.description = "This is a date range formatter with i18 support. This gem can help you make your dates at views nice-looking.".freeze
  s.email = ["m.kuzmin@darleaf.ru".freeze]
  s.homepage = "https://github.com/darkleaf/date_range_formatter".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Date range formatter".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.2.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 4.7.3"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.2.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 4.7.3"])
  end
end
