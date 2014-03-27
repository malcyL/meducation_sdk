require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserConnectionTest < ResourceTest
    test_resource(UserConnection, '/user_connections')
  end
end
