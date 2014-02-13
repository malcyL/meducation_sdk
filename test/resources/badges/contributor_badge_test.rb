require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::ContributorBadgeTest < Badges::BadgeTest
    test_resource(Badges::ContributorBadge, '/badges/contributor_badges')
    test_badge(Badges::ContributorBadge)
  end
end
