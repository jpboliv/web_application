SimpleCov.start 'rails'

SimpleCov.at_exit do
  SimpleCov.result.format!
  SimpleCov.minimum_coverage 90
  SimpleCov.minimum_coverage_by_file 80
end

if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
  puts "required simplecov"
end
