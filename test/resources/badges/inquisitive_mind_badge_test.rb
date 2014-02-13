require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::InquisitiveMindBadgeTest < Badges::BadgeTest
    test_resource(Badges::InquisitiveMindBadge, '/badges/inquisitive_mind_badges')
    test_badge(Badges::InquisitiveMindBadge)
  end
end
