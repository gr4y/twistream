Gem::Specification.new do |s|
  s.name = %q{twistream}
  s.version = File.read('VERSION')
  s.platform = Gem::Platform::RUBY
  s.authors = ["Sascha Wessel"]
  s.email = %q{swessel@gr4yweb.de}
  s.homepage = %q{http://github.com/gr4y/twistream}
  s.description = %q{a simple streaming api client for twitter}
  s.summary = %q{a simple streaming api client for twitter}

  s.rubyforge_project = "twistream"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "yajl-ruby", "~> 0.7.8"
  s.add_development_dependency "rspec", ">= 2.4.0"
end

