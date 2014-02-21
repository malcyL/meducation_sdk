require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserSettingsTest < ResourceTest
    test_resource(UserSettings, '/user_settings')
  end
end

