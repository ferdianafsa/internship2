require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Internship
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.time_zone =  "Asia/Jakarta"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.to_prepare do
    Devise::SessionsController.layout "login"
    # Devise::RegistrationsController.layout "your_layout_name"
    # Devise::ConfirmationsController.layout "your_layout_name"
    # Devise::UnlocksController.layout "your_layout_name"
    Devise::PasswordsController.layout "login"
end
  end
end
