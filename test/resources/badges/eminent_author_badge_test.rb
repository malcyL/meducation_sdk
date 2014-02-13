require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::EminentAuthorBadgeTest < Badges::BadgeTest
    test_resource(Badges::EminentAuthorBadge, '/badges/eminent_author_badges')
    test_badge(Badges::EminentAuthorBadge)
  end
end
