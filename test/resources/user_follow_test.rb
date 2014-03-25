require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class UserFollowTest < ResourceTest
    test_resource(UserFollow, '/user_follows')
  end
end

