require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::CommentatorBadgeTest < Badges::BadgeTest
    test_resource(Badges::CommentatorBadge, '/badges/commentator_badges')
    test_badge(Badges::CommentatorBadge)
  end
end
