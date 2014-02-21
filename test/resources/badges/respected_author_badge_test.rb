require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::RespectedAuthorBadgeTest < Badges::BadgeTest
    test_resource(Badges::RespectedAuthorBadge, '/badges/respected_author_badges')
    test_badge(Badges::RespectedAuthorBadge)
  end
end
