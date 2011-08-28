require "bundler/gem_tasks"
require "rake/testtask"

task :default => :test

desc "Run tests"
Rake::TestTask.new("test") { |t|
  t.libs << "test"
  t.verbose = true
  t.warning = true
}
