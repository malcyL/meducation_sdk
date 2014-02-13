require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::PhotogenicBadgeTest < Badges::BadgeTest
    test_resource(Badges::PhotogenicBadge, '/badges/photogenic_badges')
    test_badge(Badges::PhotogenicBadge)
  end
end
