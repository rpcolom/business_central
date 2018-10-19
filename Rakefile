# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "Cropster"
  gem.homepage = "http://github.com/bluebottlecoffee/cropster"
  gem.license = "MIT"
  gem.summary = %Q{Provides an interface to the Cropster API}
  gem.description = %Q{Provides an interface to the Cropster API}
  gem.email = ["caseyg@bluebottlecoffee.com", "jordan.brock@fivesenses.com.au"]
  gem.authors       = ["Casey Gipson", "Jordan Brock"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
  test.ruby_opts = %w{-W0}
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "date_range_converter #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'ci/reporter/rake/test_unit'
task :testunit => 'ci:setup:testunit'