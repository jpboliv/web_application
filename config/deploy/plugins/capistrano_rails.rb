namespace :deploy do
  namespace :check do
    desc 'Upload master.key file if not present'
    task :upload_master_key do
      on roles(:app), in: :sequence, wait: 10 do
        unless test("[ -f #{shared_path}/config/master.key ]")
          upload! 'config/master.key', "#{shared_path}/config/master.key"
        end
      end
    end
  end
end
before 'deploy:check:linked_files', 'deploy:check:upload_master_key'

# Symlink the master key from the shared directory.
append :linked_files, 'config/master.key'
