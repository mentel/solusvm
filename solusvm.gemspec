# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "solusvm/version"

Gem::Specification.new do |s|
  s.name    = %q{solusvm}
  s.version = SolusVM::VERSION

  s.authors     = ["Justin Mazzi"]
  s.email       = ["jmazzi@gmail.com"]
  s.homepage    = "https://github.com/site5/solusvm"
  s.summary     = "Wrapper for the SolusVM Admin::API"
  s.description = "SolusVM allows for easy interaction with the SolusVM Admin::API."
  s.license     = 'MIT'

  s.rubyforge_project = "solusvm"

  s.files       += %w[Gemfile LICENSE Rakefile README.markdown]
  s.files       += Dir['{bin,lib,test}/**/*']
  s.test_files   = Dir['test/**/*']
  s.executables  = "solusvm"

  s.add_runtime_dependency 'thor', '>= 0.18.1'
  s.add_runtime_dependency 'faraday', '~> 0.8.9'

  s.add_development_dependency 'mocha', '~> 1.0.0'
  s.add_development_dependency 'rake', '~> 10.1.1'
  s.add_development_dependency 'sham_rack', '~> 1.3.6'
  s.add_development_dependency 'sinatra', '~> 1.4.4'
  s.add_development_dependency 'test-unit', '~> 2.5.5'

  # JRuby
  if RUBY_PLATFORM == 'java'
    s.add_runtime_dependency 'jruby-openssl', '~> 0.7.3'
  else
    s.add_development_dependency 'rake-tomdoc', '~> 0.0.2'
  end
end
