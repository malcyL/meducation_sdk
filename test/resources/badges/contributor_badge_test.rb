require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::ContributorBadgeTest < Badges::BadgeTest
    test_resource(Badges::ContributorBadge, '/badges/contributor_badges')
    test_badge(Badges::ContributorBadge)
  end
end
