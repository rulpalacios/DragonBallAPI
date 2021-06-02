ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

require 'simplecov'
SimpleCov.start 'rails' do
  add_group 'Services', 'app/services'
  add_filter 'vendor'
end

require 'minitest/autorun'
require 'rails/test_help'
require 'factory_bot_rails'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :minitest
    with.library :rails
  end
end

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
end
