require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserEmailPreferencesTest < ResourceTest
    test_resource(UserEmailPreferences, '/user_email_preferences')
  end
end
