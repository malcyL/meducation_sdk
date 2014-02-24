require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::AnswererBadgeTest < Badges::BadgeTest
    test_resource(Badges::AnswererBadge, '/badges/answerer_badges')
    test_badge(Badges::AnswererBadge)
  end
end
