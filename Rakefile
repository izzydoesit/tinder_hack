require 'rake'
require 'rspec/core/rake_task'
require_relative 'env/env_config'

desc 'Run all test'
RSpec::Core::RakeTask.new('all') do |t|
  t.rspec_opts = ['-Ilib', '--format documentation', '--color --tty']
  t.pattern = 'spec/*/*.rb'
end

desc "Run specs tagged test"
RSpec::Core::RakeTask.new('test') do |t|
  t.rspec_opts = ["-Ilib","--format documentation","--color --tty", "--tag test", "--tag ~todo", "--tag ~known_failure"]
  t.pattern = 'spec/*/*.rb'
end
