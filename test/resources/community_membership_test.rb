require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class CommunityMembershipTest < ResourceTest
    test_resource(CommunityMembership, '/community_memberships')
  end
end

