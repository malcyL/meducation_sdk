require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class GroupMembershipTest < ResourceTest
    test_resource(GroupMembership, '/group_memberships')
  end
end

