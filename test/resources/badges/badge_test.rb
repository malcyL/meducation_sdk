require File.expand_path('../../../test_helper', __FILE__)
require File.expand_path('../../../resource_test', __FILE__)

module MeducationSDK
  class Badges::BadgeTest < ResourceTest

    def self.test_badge(klass)
      define_method :klass do klass end

      class_eval do
        def test_issue_or_update_progress_calls_loquor
          user_id = 12
          url = "#{klass.path}/issue_or_update_progress"
          Loquor.expects(:put).with(url, user_id: user_id)
          klass.issue_or_update_progress(user_id)
        end

        def test_user_calls_sdk
          badge = klass.new(user_id: 3)
          MeducationSDK::User.expects(:find).with(3)
          badge.user
        end

        def test_ruby_gets_called
          return unless ENV["INTEGRATION"]
          klass.issue_or_update_progress(2)
        end
      end
    end
  end
end

