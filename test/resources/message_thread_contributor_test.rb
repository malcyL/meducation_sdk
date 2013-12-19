require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

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

