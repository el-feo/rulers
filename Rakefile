require "bundler/gem_tasks"
require 'rake/testtask'
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

Rake::TestTask.new do |t|
  t.name = 'test'
  t.libs << 'test'
  t.test_files = Dir['test/*test*.rb']
  t.verbose = true
end
