# frozen_string_literal: true

require "rails/all"
require "policy_manager"
require_relative "boot"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fifteenglish
  class Application < Rails::Application
    config.before_configuration do
      env_file = File.join(Rails.root, "config", "local_env.yml")
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.generators do |g|
      g.test_framework :rspec
      g.template_engine :slim
    end

    I18n.enforce_available_locales = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
