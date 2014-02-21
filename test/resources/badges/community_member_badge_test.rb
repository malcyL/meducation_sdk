require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::CommunityMemberBadgeTest < Badges::BadgeTest
    test_resource(Badges::CommunityMemberBadge, '/badges/community_member_badges')
    test_badge(Badges::CommunityMemberBadge)
  end
end
