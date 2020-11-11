# frozen_string_literal: true

set :sidekiq_service_unit_name, "sidekiq-#{fetch(:full_app_name)}.service"