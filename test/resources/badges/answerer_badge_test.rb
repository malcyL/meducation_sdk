require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

require_relative 'badge_test.rb'

module MeducationSDK
  class Badges::AnswererBadgeTest < Badges::BadgeTest
    test_resource(Badges::AnswererBadge, '/badges/answerer_badges')
    test_badge(Badges::AnswererBadge)
  end
end
