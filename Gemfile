source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3.3'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'pg', '>= 0.18', '< 2.0'
gem 'webpacker', '~> 5.2', '>= 5.2.1'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', '~> 1.2020', '>= 1.2020.1'
gem 'sidekiq', '~> 6.0', '>= 6.0.6'

# Rails-React integration
gem 'mini_racer', platforms: :ruby
gem 'react_on_rails', '~> 12.0', '>= 12.0.3'

group :development, :test do
  gem 'byebug'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'factory_bot_rails', require: false
  gem 'faker',             require: false
  gem 'httplog'
  gem 'awesome_print'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', '~> 0.93.0',       require: false
  gem 'bullet'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
  gem 'reek', '~> 6.0', '>= 6.0.1',   require: false
  gem 'brakeman',                     require: false
  gem 'bundler-audit',                require: false
  gem 'rails_best_practices',         require: false
  gem 'fasterer',                     require: false
  gem 'flay',                         require: false
  gem 'overcommit',                   require: false
  gem 'capistrano',                   require: false
  gem 'capistrano-bundler',           require: false
  gem 'capistrano-rails',             require: false
  gem 'capistrano-rvm',               require: false
  gem 'capistrano3-puma',             require: false
  gem 'capistrano-sidekiq',           git: 'https://github.com/rwojnarowski/capistrano-sidekiq.git',
                                      require: false
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
