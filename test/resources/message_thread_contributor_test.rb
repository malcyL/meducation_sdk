require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class MessageThreadContributorTest < ResourceTest
    test_resource(MessageThreadContributor, '/message_thread_contributors')

    def test_user_calls_sdk
      contributer = MessageThreadContributor.new(user_id: 3)
      MeducationSDK::User.expects(:find).with(3)
      contributer.user
    end
  end
end

