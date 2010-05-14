require 'rubygems'
require 'rake'
require 'jeweler'
require 'spec/rake/spectask'
require 'yard'

Jeweler::Tasks.new do |gem|
  gem.name = 'mongo-store'
  gem.summary = 'Rack session store for MongoDB'
  gem.email = 'jonathan@titanous.com'
  gem.homepage = 'http://github.com/titanous/mongo-store'
  gem.authors = ['Jonathan Rudenberg']
  gem.add_dependency 'mongo', '>= 1.0.1'
  gem.add_dependency 'rack', '~> 1.1.0'
  gem.add_development_dependency 'rspec', '>= 1.2.9'
  gem.add_development_dependency 'yard', '>= 0'
end

Jeweler::GemcutterTasks.new

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

YARD::Rake::YardocTask.new(:doc) do |t|
  t.options = ['--legacy'] if RUBY_VERSION < '1.9.0'
end
