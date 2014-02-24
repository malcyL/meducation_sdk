require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::CommentatorBadgeTest < Badges::BadgeTest
    test_resource(Badges::CommentatorBadge, '/badges/commentator_badges')
    test_badge(Badges::CommentatorBadge)
  end
end
