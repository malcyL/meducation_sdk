require_relative '../test_helper'
require_relative '../resource_test'

module MeducationSDK
  class BloggerTest < ResourceTest
    test_resource(Blogger, '/bloggers')

    def test_user_calls_sdk
      blogger = Blogger.new(user_id: 5)
      MeducationSDK::User.expects(:find).with(5)
      blogger.user
    end
  end
end
