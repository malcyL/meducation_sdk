require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class CommunityMembershipTest < ResourceTest
    test_resource(CommunityMembership, '/community_memberships')
  end
end

