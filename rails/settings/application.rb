# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NameOfApplication
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.generators do |g|
      g.test_framework :rspec,
        fixtures:         true,
        view_specs:       true,
        helper_specs:     true,
        routing_specs:    true,
        request_specs:    true,
        controller_specs: true
    end
  end
end
