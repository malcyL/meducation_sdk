require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::InquisitiveMindBadgeTest < Badges::BadgeTest
    test_resource(Badges::InquisitiveMindBadge, '/badges/inquisitive_mind_badges')
    test_badge(Badges::InquisitiveMindBadge)
  end
end
