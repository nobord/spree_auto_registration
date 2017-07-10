# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_auto_registration/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_auto_registration'
  s.version     = SpreeAutoRegistration.version
  s.summary     = 'Registration to the bare minimum.'
  s.description = 'However the order is confirmed, an activation/confirmation link is sent by e-mail to the newly (auto)registered user. Following the link leads to a page where the new user must pick a password to confirm the account.'
  s.required_ruby_version = '>= 2.2.2'

  s.author    = 'Josef Hovad'
  s.email     = 'josef.hovad@nobord.com'
  s.homepage  = 'https://github.com/nobord/spree_auto_registration'
  s.license = 'BSD-3-Clause'

  # s.files       = `git ls-files`.split("\n")
  # s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.3.0.rc1', '< 4.0'
  s.add_dependency 'spree_frontend', '~> 3.3.0.rc1'
  s.add_dependency 'spree_auth_devise', '~> 3.3.0.rc1'
  s.add_dependency 'devise', '~> 4.3.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'appraisal'
end
