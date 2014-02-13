require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::QuestionerBadgeTest < Badges::BadgeTest
    test_resource(Badges::QuestionerBadge, '/badges/questioner_badges')
    test_badge(Badges::QuestionerBadge)
  end
end
