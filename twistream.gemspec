# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{twistream}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sascha Wessel"]
  s.date = %q{2010-12-14}
  s.description = %q{a simple streaming api client for twitter}
  s.email = %q{swessel@gr4yweb.de}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "Rakefile",
    "VERSION",
    "lib/twistream.rb",
    "lib/twistream/client.rb",
    "lib/twistream/event.rb",
    "lib/twistream/event_handler.rb"
  ]
  s.homepage = %q{http://github.com/gr4y/twistream}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{a simple streaming api client for twitter}
  s.test_files = [
    "spec/client_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0.7.8"])
    else
      s.add_dependency(%q<yajl-ruby>, [">= 0.7.8"])
    end
  else
    s.add_dependency(%q<yajl-ruby>, [">= 0.7.8"])
  end
end

