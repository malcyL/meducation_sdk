require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::BefrienderBadgeTest < Badges::BadgeTest
    test_resource(Badges::BefrienderBadge, '/badges/befriender_badges')
    test_badge(Badges::BefrienderBadge)
  end
end
