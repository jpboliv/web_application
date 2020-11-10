# frozen_string_literal: true

set :bundle_flags, '--quiet'
set :bundle_path, nil
set :bundle_without, nil

namespace :deploy do
  desc 'Setup bundler flags'
  task :setup_bundler_flags do
    on roles(:app) do
      execute :bundle, :config, '--local deployment true'
      execute :bundle, :config, '--local without deployment:development:test'
      execute :bundle, :config, "--local path #{shared_path.join('vendor/bundle')}"
    end
  end
end
before 'bundler:install', 'deploy:setup_bundler_flags'
