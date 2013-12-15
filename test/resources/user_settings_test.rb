require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class UserSettingsTest < ResourceTest
    test_resource(UserSettings, '/user_settings')
  end
end

