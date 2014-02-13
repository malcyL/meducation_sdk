require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::RespectedAuthorBadgeTest < Badges::BadgeTest
    test_resource(Badges::RespectedAuthorBadge, '/badges/respected_author_badges')
    test_badge(Badges::RespectedAuthorBadge)
  end
end
