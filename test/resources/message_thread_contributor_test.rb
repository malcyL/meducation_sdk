require File.expand_path('../../test_helper', __FILE__)
require File.expand_path('../../resource_test', __FILE__)

module MeducationSDK
  class MessageThreadContributorTest < ResourceTest
    test_resource(MessageThreadContributor, '/message_thread_contributors')
  end
end

