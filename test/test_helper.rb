ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

require 'simplecov'
SimpleCov.start 'rails' do
  add_group 'Services', 'app/services'
  add_filter 'vendor'
end

require 'rails/test_help'
require 'factory_bot_rails'
require 'minitest/autorun'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...


  include FactoryBot::Syntax::Methods
end
