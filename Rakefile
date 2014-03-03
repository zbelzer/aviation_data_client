require "bundler/gem_tasks"

task :console do
  require 'irb'
  require 'irb/completion'
  require 'aviation_data_client'

  ActiveRestClient::Base.base_url = "http://localhost:3000/v1"

  ARGV.clear
  IRB.start
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec
