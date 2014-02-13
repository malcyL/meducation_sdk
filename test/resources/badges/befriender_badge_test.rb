require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::BefrienderBadgeTest < ResourceTest
    test_resource(Badges::BefrienderBadge, '/badges/befriender_badges')

    def test_issue_or_update_progress_calls_loquor
      user_id = 12
      url = "#{Badges::BefrienderBadge.path}/issue_or_update_progress"
      Loquor.expects(:put).with(url, user_id: user_id)
      Badges::BefrienderBadge.issue_or_update_progress(user_id)
    end

    def test_user_calls_sdk
      badge = Badges::BefrienderBadge.new(user_id: 3)
      MeducationSDK::User.expects(:find).with(3)
      badge.user
    end

    def test_ruby_gets_called
      return unless ENV["INTEGRATION"]
      Badges::BefrienderBadge.issue_or_update_progress(2)
    end
  end
end
