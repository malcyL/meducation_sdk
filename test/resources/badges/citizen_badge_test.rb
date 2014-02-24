require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::CitizenBadgeTest < Badges::BadgeTest
    test_resource(Badges::CitizenBadge, '/badges/citizen_badges')
    test_badge(Badges::CitizenBadge)
  end
end
