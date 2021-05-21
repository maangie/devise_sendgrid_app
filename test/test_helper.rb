ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  require 'simplecov'
  SimpleCov.start

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
end
