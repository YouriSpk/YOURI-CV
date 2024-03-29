require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Force HTTPS on production
  config.force_ssl = true

  # Use a real queuing backend for Active Job (and separate queues per environment)
  config.active_job.queue_adapter     = :sidekiq

  # Do not eager load code on boot.
  config.eager_load = true

  # Enable caching
  config.action_controller.perform_caching = true
  config.cache_store = :memory_store
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{2.days.to_i}"
  }

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :cloudinary

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_url_options = { host: 'your-production-domain.com' } # Remplacez par le domaine de votre application
  config.action_mailer.default charset: 'utf-8'
  config.action_mailer.smtp_settings = {
    address: 'live.smtp.mailtrap.io',
    port: 587,
    domain: 'mailtrap.club',
    user_name: ENV.fetch('MAILTRAP_SMTP_USER'),
    password: ENV.fetch('MAILTRAP_SMTP_PASSWORD'),
    authentication: 'plain',
    enable_starttls_auto: true
  }

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # Use a different cache store in production.
  config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  config.action_controller.asset_host = 'https://cv-youri-565c941677b0.herokuapp.com/'

  # Precompile assets
  config.assets.compile = false
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like NGINX, varnish or squid.
  # config.action_dispatch.rack_cache = true

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # config.active_job.queue_adapter     = :sidekiq

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Mount Action Cable outside main process or domain
  # config.action_cable.mount_path = nil
  # config.action_cable.url = 'wss://your-production-domain.com/cable'
  # config.action_cable.allowed_request_origins = [ 'http://your-production-domain.com', /http:\/\/your-production-domain.com.*/ ]
end
