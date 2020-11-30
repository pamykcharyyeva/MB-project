# Load the Rails application.
require_relative 'application'

# ActiveSupport::Deprecation.silenced = true
RAILS_APP_API_KEY = ENV['rails_api_key']
# Initialize the Rails application.
Rails.application.initialize!

