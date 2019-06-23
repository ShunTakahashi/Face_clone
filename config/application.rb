require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

config.assets.initialize_on_precompile = false

module FaceClone
  class Application < Rails::Application
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    config.load_defaults 5.2

    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
  end
end
