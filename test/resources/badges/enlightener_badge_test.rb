require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::EnlightenerBadgeTest < Badges::BadgeTest
    test_resource(Badges::EnlightenerBadge, '/badges/enlightener_badges')
    test_badge(Badges::EnlightenerBadge)
  end
end
