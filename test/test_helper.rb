ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'database_cleaner'


class ActiveSupport::TestCase
  setup do
    DatabaseCleaner.start
    StripeMock.start
  end

  teardown do
    DatabaseCleaner.clean
    StripeMock.stop
  end
end
