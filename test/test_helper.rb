ENV['RAILS_ENV'] ||= 'test'
require expand_path('../config/environment', __dir__)
require 'rails/test_help'

# rubocop:disable Style/ClassAndModuleChildren
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
# rubocop:enable Style/ClassAndModuleChildren
