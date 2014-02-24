require_relative '../../test_helper'
require_relative '../../resource_test'

module MeducationSDK
  class Badges::QuestionerBadgeTest < Badges::BadgeTest
    test_resource(Badges::QuestionerBadge, '/badges/questioner_badges')
    test_badge(Badges::QuestionerBadge)
  end
end
