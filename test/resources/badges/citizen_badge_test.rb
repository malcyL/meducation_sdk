require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::CitizenBadgeTest < Badges::BadgeTest
    test_resource(Badges::CitizenBadge, '/badges/citizen_badges')
    test_badge(Badges::CitizenBadge)
  end
end
