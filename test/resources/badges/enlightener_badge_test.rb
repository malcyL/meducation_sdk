require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::EnlightenerBadgeTest < Badges::BadgeTest
    test_resource(Badges::EnlightenerBadge, '/badges/enlightener_badges')
    test_badge(Badges::EnlightenerBadge)
  end
end
