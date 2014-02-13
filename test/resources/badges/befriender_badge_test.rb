require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::BefrienderBadgeTest < Badges::BadgeTest
    test_resource(Badges::BefrienderBadge, '/badges/befriender_badges')
    test_badge(Badges::BefrienderBadge)
  end
end
