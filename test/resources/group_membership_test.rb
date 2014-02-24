require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class GroupMembershipTest < ResourceTest
    test_resource(GroupMembership, '/group_memberships')
  end
end

