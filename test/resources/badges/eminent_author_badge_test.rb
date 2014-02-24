require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::EminentAuthorBadgeTest < Badges::BadgeTest
    test_resource(Badges::EminentAuthorBadge, '/badges/eminent_author_badges')
    test_badge(Badges::EminentAuthorBadge)
  end
end
