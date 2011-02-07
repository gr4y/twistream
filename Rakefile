require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "twistream"
    gem.summary = %Q{a simple streaming api client for twitter}
    gem.description = %Q{a simple streaming api client for twitter}
    gem.email = "swessel@gr4yweb.de"
    gem.homepage = "http://github.com/gr4y/twistream"
    gem.authors = ["Sascha Wessel"]
    gem.require_path = 'lib'
    gem.files = %w( Rakefile ) + Dir.glob("{lib}/**/*") + %w( VERSION )
    gem.add_runtime_dependency "yajl-ruby", "~> 0.7.8"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

desc "generate rdoc"
require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "twistream #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc "run all specs"
begin
  gem 'rspec', '1.3.0'
  require 'spec/rake/spectask'
  Spec::Rake::SpecTask.new do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
  end
rescue LoadError
  warn "[twistream] rspec is not installed. install it with: gem install rspec --version 1.3.0"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "twistream #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'reek/rake/task'
Reek::Rake::Task.new do |t|
  t.fail_on_error = false
  t.verbose = true
end

task :test => [:spec]
task :default => [:test, :build]