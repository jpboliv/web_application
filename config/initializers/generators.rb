Rails.application.config.generators do |g|
  g.assets false
  g.helper false
  g.view_specs false
  g.test_framework :rspec
  g.integration_tool :rspec
  g.fixture_replacement :factory_bot, dir: 'spec/factories'
  g.factory_bot suffix: 'factory'
end
