# frozen_string_literal: true

namespace :deploy do
  namespace :check do
    desc 'Upload credentials key files if not present'
    task :upload_credentials_keys do
      on roles(:app), in: :sequence, wait: 10 do
        unless test("[ -f #{shared_path}/config/master.key ]")
          upload! 'config/master.key', "#{shared_path}/config/master.key"
        end

        unless test("[ -f #{shared_path}/config/credentials/#{fetch(:stage)}.key ]")
          execute "mkdir -p #{shared_path}/config/credentials"
          upload! "config/credentials/#{fetch(:stage)}.key", "#{shared_path}/config/credentials/#{fetch(:stage)}.key"
        end
      end
    end
  end
end
before 'deploy:check:linked_files', 'deploy:check:upload_credentials_keys'

# Symlink the credentials keys from the shared directory.
append :linked_files, 'config/master.key', "config/credentials/#{fetch(:stage)}.key"
