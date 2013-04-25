require 'bundler/setup'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new do |spec|
    spec.rspec_opts = ['--color', "--format documentation"]
end

task :default => :spec

desc "Remove all build artifacts"
task :clean do
    sh "rm -rf pkg/"
end


