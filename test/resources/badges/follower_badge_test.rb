require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::FollowerBadgeTest < Badges::BadgeTest
    test_resource(Badges::FollowerBadge, '/badges/follower_badges')
    test_badge(Badges::FollowerBadge)
  end
end
