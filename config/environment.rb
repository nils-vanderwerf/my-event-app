# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

begin
    require 'minitest/autorun'
  rescue LoadError => e
    raise e unless ENV['RAILS_ENV'] == "production"
  end