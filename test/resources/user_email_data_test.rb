require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserEmailDataTest < ResourceTest
    test_resource(UserEmailData, '/user_email_data')
  end
end

