require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class FriendshipTest < ResourceTest
    test_resource(Friendship, '/friendships')
  end
end

