require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::PhotogenicBadgeTest < Badges::BadgeTest
    test_resource(Badges::PhotogenicBadge, '/badges/photogenic_badges')
    test_badge(Badges::PhotogenicBadge)
  end
end
