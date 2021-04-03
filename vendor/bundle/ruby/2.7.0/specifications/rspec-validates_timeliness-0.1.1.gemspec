# -*- encoding: utf-8 -*-
# stub: rspec-validates_timeliness 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-validates_timeliness".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Yoshiyuki Hirano".freeze]
  s.date = "2016-06-12"
  s.description = "Simple RSpec matchers for validates_timeliness".freeze
  s.email = ["yhirano@aiming-inc.com".freeze]
  s.executables = ["console".freeze, "setup".freeze]
  s.files = ["bin/console".freeze, "bin/setup".freeze]
  s.homepage = "https://github.com/yhirano55/rspec-validates_timeliness".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Simple RSpec matchers for validates_timeliness".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rspec>.freeze, [">= 3.0"])
    s.add_runtime_dependency(%q<validates_timeliness>.freeze, ["~> 4.0"])
    s.add_runtime_dependency(%q<timecop>.freeze, [">= 0.8.0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<activemodel>.freeze, [">= 4.0"])
  else
    s.add_dependency(%q<rspec>.freeze, [">= 3.0"])
    s.add_dependency(%q<validates_timeliness>.freeze, ["~> 4.0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0.8.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<activemodel>.freeze, [">= 4.0"])
  end
end
