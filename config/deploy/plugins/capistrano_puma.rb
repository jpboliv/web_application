# frozen_string_literal: true

set :puma_preload_app, true
set :puma_init_active_record, true
set :puma_conf, "#{shared_path}/config/puma.rb"
set :nginx_server_name, -> { fetch(:server_name) }
set :nginx_downstream_uses_ssl, true

# Symlink the puma config from the shared directory.
append :linked_files, 'config/puma.rb'
