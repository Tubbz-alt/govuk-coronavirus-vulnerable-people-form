# frozen_string_literal: true

Rails.application.configure do
  # Settings specified here will take precedence over those in
  # config/application.rb.

  config.hosts = [
    "coronavirus-vulnerable-people.service.gov.uk",
    "d18j9d8kwes7fb.cloudfront.net",
    "govuk-coronavirus-vulnerable-people-form-prod.cloudapps.digital",
    "govuk-coronavirus-vulnerable-people-form-stg.cloudapps.digital",
  ]

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Ensures that a master key has been made available in either
  # ENV["RAILS_MASTER_KEY"] or in config/master.key. This key is used to
  # decrypt credentials (and other encrypted files).
  # config.require_master_key = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  if ENV["RAILS_SERVE_STATIC_FILES"].present?
    config.public_file_server.enabled = true
    config.public_file_server.headers = {
      "Cache-Control" => "public, s-maxage=31536000, max-age=31536000",
    }
  else
    config.public_file_server.enabled = false
  end

  # Compress CSS using a preprocessor.
  # config.assets.css_compressor = :sass

  # Rather than use a CSS compressor, use Sass-Rails to perform compression
  config.sass.style = :compressed
  config.sass.line_comments = false

  # Compress JavaScript
  config.assets.js_compressor = :uglifier

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = 'http://assets.example.com'

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Force all access to the app over SSL, use Strict-Transport-Security, and
  # use secure cookies.
  config.force_ssl = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :info

  # Prepend all log lines with the following tags.
  config.log_tags = [:request_id]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job (and separate queues per
  # environment).
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "myapp_production"

  # Enable locale fallbacks for I18n (makes lookups for any locale fall
  # back to the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  config.analytics_tracking_id = ENV["GA_VIEW_ID"]

  # Use a different logger for distributed setups.
  # require 'syslog/logger'
  # config.logger = ActiveSupport::TaggedLogging.new(
  # Syslog::Logger.new 'app-name')

  # Do not dump schema after migrations.
  # config.active_record.dump_schema_after_migration = false

  # Inserts middleware to perform automatic connection switching.
  # The `database_selector` hash is used to pass options to the DatabaseSelector
  # middleware. The `delay` is used to determine how long to wait after a write
  # to send a subsequent read to the primary.
  #
  # The `database_resolver` class is used by the middleware to determine which
  # database is appropriate to use based on the time delay.
  #
  # The `database_resolver_context` class is used by the middleware to set
  # timestamps for the last write to the primary. The resolver uses the context
  # class timestamps to determine how long to wait before reading from the
  # replica.
  #
  # By default Rails will store a last write timestamp in the session. The
  # DatabaseSelector middleware is designed as such you can define your own
  # strategy for connection switching and pass that into the middleware through
  # these configuration options.
  # config.active_record.database_selector = { delay: 2.seconds }
  # config.active_record.database_resolver =
  #   ActiveRecord::Middleware::DatabaseSelector::Resolver
  # config.active_record.database_resolver_context =
  #   ActiveRecord::Middleware::DatabaseSelector::Resolver::Session
end
