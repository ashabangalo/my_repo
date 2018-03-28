source_rubygems = 'https://rubygems.org'
source_idg      = 'http://gems.idg.primedia.com'


source source_rubygems do
  gem 'coffee-rails', '~> 4.2'
  gem 'jbuilder', '~> 2.5'
  gem 'mysql2', '>= 0.3.18', '< 0.5'
  gem 'rails', '~> 5.1.5'
  gem 'sass-rails', '~> 5.0'
  gem 'turbolinks', '~> 5'
  gem 'uglifier', '>= 1.3.0'
  gem 'unicorn', '~> 5.4'
  gem 'config'

  group :development, :test do
    gem 'capybara', '~> 2.13'
    gem 'dotenv-rails'
    gem 'pry-byebug'
    gem 'puma'
    gem 'rubocop', '~> 0.51', require: false
    gem 'selenium-webdriver'
    gem 'faraday'
    gem 'rentpath_leankit','>=0.1'
    gem 'config'
    gem 'shoulda-matchers'
    gem 'rspec-rails'
    gem 'factory_bot'
    gem 'factory_bot_rails'
    gem 'rails-controller-testing'
    gem 'slim-rails'
    gem 'simplecov', require: false, group: :test
  end

  group :development do
    gem 'listen', '>= 3.0.5', '< 3.2'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
    gem 'web-console', '>= 3.3.0'
  end

  gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)
end

source source_idg do
  gem 'ops_rentpath', '~> 0.0.2'
end
