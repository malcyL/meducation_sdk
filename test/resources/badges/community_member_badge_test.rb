require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::CommunityMemberBadgeTest < Badges::BadgeTest
    test_resource(Badges::CommunityMemberBadge, '/badges/community_member_badges')
    test_badge(Badges::CommunityMemberBadge)
  end
end
