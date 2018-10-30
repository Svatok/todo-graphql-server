require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoGraphql
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.middleware.use ActionDispatch::Flash
    config.autoload_paths << Rails.root.join('lib')
    config.autoload_paths << Rails.root.join('app', 'graphql', 'lib')
    config.autoload_paths << Rails.root.join('app', 'graphql', 'objects')
    config.autoload_paths << Rails.root.join('app', 'graphql')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.api_only = true
  end
end
